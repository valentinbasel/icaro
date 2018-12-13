#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# uploader_icaro_v4.py
#
# Copyright © 2017 Valentin Basel <valentinbasel@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

import os
import usb
import sys

class Pinguino4550(object):
    name = 'Pinguino 2550'
    arch = 8
    bldr = 'boot4'
    proc = '18f2550'
    board = 'PINGUINO2550'
    vendor = 0x04D8
    product = 0xFEAA
    memstart = 0x0C00
    memend   = 0x8000
    shortarg = '-p2550'
    longarg = '--pinguino2550'

class UPLOAD(object):
    """ upload .hex into pinguino device """

    # General Data Packet Structure (usbBuf)
    # ------------------------------------------------------------------
    #    __________________
    #    |    COMMAND     |   0       [CMD]
    #    |      LEN       |   1       [LEN]
    #    |     ADDRL      |   2       [        ]  [addrl]
    #    |     ADDRH      |   3       [ADR.pAdr]: [addrh]
    #    |     ADDRU      |   4       [        ]  [addru]
    #    |                |   5       [DATA]
    #    |                |
    #    .      DATA      .
    #    .                .
    #    |                |   62
    #    |________________|   63
    #
    # ------------------------------------------------------------------
    BOOT_CMD                        =    0
    BOOT_CMD_LEN                    =    1
    BOOT_ADDR_LO                    =    2
    BOOT_ADDR_HI                    =    3
    BOOT_ADDR_UP                    =    4
    BOOT_DATA_START                 =    5

    BOOT_DEV1                       =    5
    BOOT_DEV2                       =    6

    BOOT_VER_MINOR                  =    2
    BOOT_VER_MAJOR                  =    3

    BOOT_SIZE                       =    1

    # Bootloader commands
    # ------------------------------------------------------------------
    READ_VERSION_CMD                =    0x00
    READ_FLASH_CMD                  =    0x01
    WRITE_FLASH_CMD                 =    0x02
    ERASE_FLASH_CMD                 =    0x03
    RESET_CMD                       =    0xFF

    # Data Block's size to write
    # ------------------------------------------------------------------
    DATABLOCKSIZE                   =    32

    # USB Packet size
    # ------------------------------------------------------------------
    MAXPACKETSIZE                   =    64

    # bulk endpoints
    # ------------------------------------------------------------------
    IN_EP                           =    0x81    # endpoint for Bulk reads
    OUT_EP                          =    0x01    # endpoint for Bulk writes

    # configuration

    TIMEOUT                         =    10000       # 1200

    # Table with Microchip 8-bit USB devices
    # device_id:[PIC name]
    # ------------------------------------------------------------------

    devices_table = \
    {
        0x1240: ['18f2550'],
        0x1200: ['18f4550']
    }


    # Hex format record types
    # --------------------------------------------------------------------------
    # Data_Record = 00
    # End_Of_File_Record = 01
    # Extended_Segment_Address_Record = 02
    # Start_Segment_Address_Record = 03
    # Extended_Linear_Address_Record = 04
    # Start_Linear_Address_Record = 05

    # Python3 compatibility (octals)
    Data_Record                     = 0o0
    End_Of_File_Record              = 0o1
    Extended_Segment_Address_Record = 0o2
    Start_Segment_Address_Record    = 0o3
    Extended_Linear_Address_Record  = 0o4
    Start_Linear_Address_Record     = 0o5


    # Error codes returned by various functions
    # --------------------------------------------------------------------------
    ERR_NONE                        = 100
    ERR_CMD_ARG                     = 101
    ERR_CMD_UNKNOWN                 = 102
    ERR_DEVICE_NOT_FOUND            = 103
    ERR_USB_INIT1                   = 104
    ERR_USB_INIT2                   = 105
    ERR_USB_OPEN                    = 106
    ERR_USB_WRITE                   = 107
    ERR_USB_READ                    = 108
    ERR_HEX_OPEN                    = 109
    ERR_HEX_STAT                    = 110
    ERR_HEX_MMAP                    = 111
    ERR_HEX_SYNTAX                  = 112
    ERR_HEX_CHECKSUM                = 113
    ERR_HEX_RECORD                  = 114
    ERR_VERIFY                      = 115
    ERR_EOL                         = 116
    ERR_USB_ERASE                   = 117

    # Configuration
    # ----------------------------------------------------------------------

    INTERFACE_ID                    = 0x00
    ACTIVE_CONFIG                   = 0x01
    REPORTE=""
# # ------------------------------------------------------------------------------
    def getDevice(self, board):
        """ Scans connected USB devices until it finds a Pinguino board """
        #logging.info("Looking for a Pinguino device ...")
        busses = usb.busses()
        for bus in busses:
            for device in bus.devices:
                if (device.idVendor, device.idProduct) == (board.vendor, board.product):
                    print("Found device 0x%04X:0x%04X" % (device.idVendor, device.idProduct))
                    #self.REPORTE=self.REPORTE+("se encontro el dispositivo 0x%04X:0x%04X \n" % (device.idVendor, device.idProduct))
                    return device
        return self.ERR_DEVICE_NOT_FOUND

# ----------------------------------------------------------------------
    def initDevice(self, device):
        """ Init a Pinguino device """
        handle = device.open()
        if handle:
            handle.setConfiguration(self.ACTIVE_CONFIG)
            print("Configuration set")
            handle.claimInterface(self.INTERFACE_ID)
            print("Interface claimed")
            return handle
        return self.ERR_USB_INIT1

# ------------------------------------------------------------------------------
    def closeDevice(self, handle):
        """ Close currently-open USB device """
        try:
            handle.releaseInterface()
        except Exception as e:
            #logging.info(e)
            pass
# ----------------------------------------------------------------------
    def sendCommand(self, handle, usbBuf):
# ----------------------------------------------------------------------
        """ send command to the bootloader """
        #self.txtWrite('[%s]' % ', '.join(map(hex, usbBuf)))
        sent_bytes = handle.bulkWrite(self.OUT_EP, usbBuf, self.TIMEOUT)
        #self.txtWrite(str(sent_bytes))

        if sent_bytes == len(usbBuf):
            #self.txtWrite("Block issued without problem.")
            # whatever is returned, USB packet size is always
            # 64 bytes long in high speed mode
            return handle.bulkRead(self.IN_EP, self.MAXPACKETSIZE, self.TIMEOUT)

        return self.ERR_USB_WRITE

# ----------------------------------------------------------------------
    def resetDevice(self, handle):
# ----------------------------------------------------------------------
        """ reset device """
        #usbBuf = [self.RESET_DEVICE_CMD] * self.MAXPACKETSIZE
        usbBuf = [0] * self.MAXPACKETSIZE
        # command code
        usbBuf[self.BOOT_CMD] = self.RESET_CMD
        # write data packet
        #usbBuf = self.sendCommand(usbBuf)
        try:
            handle.bulkWrite(self.OUT_EP, usbBuf, self.TIMEOUT)
        except:
            return self.ERR_USB_WRITE

        return self.ERR_NONE

# ----------------------------------------------------------------------
    def getVersion(self, handle):
# ----------------------------------------------------------------------
        """ get bootloader version """
        usbBuf = [0] * self.MAXPACKETSIZE
        # command code
        usbBuf[self.BOOT_CMD] = self.READ_VERSION_CMD
        # write data packet and get response
        usbBuf = self.sendCommand(handle, usbBuf)

        if usbBuf == self.ERR_USB_WRITE :
            return self.ERR_USB_WRITE

        # major.minor
        return str(usbBuf[self.BOOT_VER_MAJOR]) + "." + \
               str(usbBuf[self.BOOT_VER_MINOR])

# ----------------------------------------------------------------------
    def getDeviceID(self, handle):
# ----------------------------------------------------------------------
        """ read 2-byte device ID from location 0x3FFFFE """
        usbBuf = self.readFlash(handle, 0x3FFFFE, 2)

        if usbBuf == self.ERR_USB_WRITE:
            return self.ERR_USB_WRITE

        #print "BUFFER =", usbBuf
        dev1 = usbBuf[self.BOOT_DEV1]
        #print "DEV1 =", dev1
        dev2 = usbBuf[self.BOOT_DEV2]
        #print "DEV2 =", dev2
        device_id = (int(dev2) << 8) + int(dev1)
        #print device_id
        device_rev = device_id & 0x001F
        # mask revision number
        return device_id  & 0xFFE0

# ----------------------------------------------------------------------
    def getDeviceName(self, device_id):
# ----------------------------------------------------------------------
        for n in self.devices_table:
            if n == device_id:
                return self.devices_table[n][0]
        return self.ERR_DEVICE_NOT_FOUND

# ----------------------------------------------------------------------
    def eraseFlash(self, handle, address, numBlocks):
# ----------------------------------------------------------------------
        """ erase numBlocks of flash memory """
        usbBuf = [0] * self.MAXPACKETSIZE
        # command code
        usbBuf[self.BOOT_CMD] = self.ERASE_FLASH_CMD
        # number of blocks to erase
        usbBuf[self.BOOT_SIZE] = numBlocks
        # block address
        usbBuf[self.BOOT_ADDR_LO] = (address      ) & 0xFF
        usbBuf[self.BOOT_ADDR_HI] = (address >> 8 ) & 0xFF
        usbBuf[self.BOOT_ADDR_UP] = (address >> 16) & 0xFF
        # write data packet
        #return self.sendCommand(usbBuf)
        handle.bulkWrite(self.OUT_EP, usbBuf, self.TIMEOUT)

# ----------------------------------------------------------------------
    def readFlash(self, handle, address, length):
# ----------------------------------------------------------------------
        """ read a block of flash """
        usbBuf = [0] * self.MAXPACKETSIZE
        # command code
        usbBuf[self.BOOT_CMD] = self.READ_FLASH_CMD
        # size of block in bytes
        usbBuf[self.BOOT_CMD_LEN] = length
        # address of the block
        usbBuf[self.BOOT_ADDR_LO] = (address      ) & 0xFF
        usbBuf[self.BOOT_ADDR_HI] = (address >> 8 ) & 0xFF
        usbBuf[self.BOOT_ADDR_UP] = (address >> 16) & 0xFF
        # send request to the bootloader
        return self.sendCommand(handle, usbBuf)
    def writeFlash(self, handle, address, datablock):
# ----------------------------------------------------------------------
        """ write a block of code
            first 5 bytes are for block description (BOOT_CMD, BOOT_CMD_LEN and BOOT_ADDR)
            data block size should be of DATABLOCKSIZE bytes
            total length is then DATABLOCKSIZE + 5 """
        usbBuf = [0xFF] * self.MAXPACKETSIZE
        # command code
        usbBuf[self.BOOT_CMD] = self.WRITE_FLASH_CMD
        # size of block
        usbBuf[self.BOOT_CMD_LEN] = len(datablock)
        # block's address
        usbBuf[self.BOOT_ADDR_LO] = (address      ) & 0xFF
        usbBuf[self.BOOT_ADDR_HI] = (address >> 8 ) & 0xFF
        usbBuf[self.BOOT_ADDR_UP] = (address >> 16) & 0xFF
        # add data to the packet
        for i in range(len(datablock)):
            usbBuf[self.BOOT_DATA_START + i] = datablock[i]
        # write data packet on usb device
        handle.bulkWrite(self.OUT_EP, usbBuf, self.TIMEOUT)

# ----------------------------------------------------------------------
    def writeHex(self, handle, filename, board):
# ----------------------------------------------------------------------
        """ Parse the Hex File Format and send data to usb device """

        """
        [0]     Start code, one character, an ASCII colon ':'.
        [1:3]   Byte count, two hex digits, a number of bytes (hex digit pairs) in the data field. 16 (0x10) or 32 (0x20) bytes of data are the usual compromise values between line length and address overhead.
        [3:7]   Address, four hex digits, a 16-bit address of the beginning of the memory position for the data. Limited to 64 kilobytes, the limit is worked around by specifying higher bits via additional record types. This address is big endian.
        [7:9]   Record type, two hex digits, 00 to 05, defining the type of the data field.
        [9:*]   Data, a sequence of n bytes of the data themselves, represented by 2n hex digits.
        [*:*]   Checksum, two hex digits - the least significant byte of the two's complement of the sum of the values of all fields except fields 1 and 6 (Start code ":" byte and two hex digits of the Checksum). It is calculated by adding together the hex-encoded bytes (hex digit pairs), then leaving only the least significant byte of the result, and making a 2's complement (either by subtracting the byte from 0x100, or inverting it by XOR-ing with 0xFF and adding 0x01). If you are not working with 8-bit variables, you must suppress the overflow by AND-ing the result with 0xFF. The overflow may occur since both 0x100-0 and (0x00 XOR 0xFF)+1 equal 0x100. If the checksum is correctly calculated, adding all the bytes (the Byte count, both bytes in Address, the Record type, each Data byte and the Checksum) together will always result in a value wherein the least significant byte is zero (0x00).
                For example, on :0300300002337A1E
                03 + 00 + 30 + 00 + 02 + 33 + 7A = E2, 2's complement is 1E
        """

        data        = []
        old_address = 0 # or board.memstart ?
        max_address = 0
        address_Hi  = 0
        codesize    = 0
        erasedBlockSize = 64
        # image of the whole PIC memory (above memstart)
        # --------------------------------------------------------------
        for i in range(board.memend - board.memstart):
            data.append(0xFF)
        hexfile = open(filename,'r')
        lines = hexfile.readlines()
        hexfile.close()
        # calculate checksum and max_address
        for line in lines:
            #print line
            byte_count = int(line[1:3], 16)
            # lower 16 bits (bits 0-15) of the data address
            address_Lo = int(line[3:7], 16)
            record_type= int(line[7:9], 16)
            # checksum calculation
            end = 9 + byte_count * 2 # position of checksum at end of line
            checksum = int(line[end:end+2], 16)
            cs = 0
            i = 1
            while i < end:
                cs = cs + (0x100 - int(line[i:i+2], 16) ) & 0xff # not(i)
                i = i + 2
            if checksum != cs:
                return self.ERR_HEX_CHECKSUM
            # extended linear address record
            if record_type == self.Extended_Linear_Address_Record:
                # upper 16 bits (bits 16-31) of the data address
                address_Hi = int(line[9:13], 16) << 16
            # data record
            elif record_type == self.Data_Record:
                address = address_Hi + address_Lo
                # max address
                if (address > old_address) and (address < board.memend):
                    max_address = address + byte_count
                    old_address = address
                # code size
                if (address >= board.memstart) and (address < board.memend):
                    codesize = codesize + byte_count
                # data append
                for i in range(byte_count):
                    data[address - board.memstart + i] = int(line[9 + (2 * i) : 11 + (2 * i)], 16)
            # end of file record
            elif record_type == self.End_Of_File_Record:
                break
            # unsupported record type
            else:
                return self.ERR_HEX_RECORD
        # max_address must be divisible by self.DATABLOCKSIZE
        max_address = max_address + erasedBlockSize - (max_address % erasedBlockSize)
        # erase memory from board.memstart to max_address
        numBlocksMax = (board.memend - board.memstart) / erasedBlockSize
        numBlocks    = (max_address - board.memstart) / erasedBlockSize
        if numBlocks > numBlocksMax:
            return self.ERR_USB_ERASE
        if numBlocks < 256:
            self.eraseFlash(handle, board.memstart, numBlocks)
        else:
            numBlocks = numBlocks - 255
            upperAddress = board.memstart + 255 * erasedBlockSize
            # from board.memstart to board.memstart + 255 x 64 = 0x3FC0
            self.eraseFlash(handle, board.memstart, 255)
            # erase flash memory from board.memstart + 0x3FC0 to max_address
            self.eraseFlash(handle, upperAddress, numBlocks)
        # write blocks of DATABLOCKSIZE bytes
        for addr in range(board.memstart, max_address, self.DATABLOCKSIZE):
            index = addr - board.memstart
            self.writeFlash(handle, addr, data[index:index+self.DATABLOCKSIZE])
        print("%d bytes written." % codesize)
        return self.ERR_NONE

    def uploadDevice(self, filename):
        # check file to upload
        # -------------------------------------------------------------
        board=Pinguino4550()
        if filename == '':
            print("No program to write")
            self.REPORTE=self.REPORTE+("No program to write")
            self.closeDevice(handle)
            return self.REPORTE
        hexfile = open(filename, 'r')
        if hexfile == "":
            print("Unable to open %s" % filename)
            Rself.EPORTE=self.REPORTE+("Unable to open %s" % filename)
            return self.REPORTE
        hexfile.close()
        # search for a Pinguino board
        # --------------------------------------------------------------
        device = self.getDevice(board)
        if device == self.ERR_DEVICE_NOT_FOUND:
            print("Pinguino not found")
            print("If your device is connected,")
            print("press the Reset button to switch to bootloader mode.")
            self.REPORTE=self.REPORTE+"PINGUINO V4 no encontrado, si tu dispositivo esta conectado, presiona RESET y vuelve a intentar"
            return self.REPORTE
        print("Pinguino found")
        handle = self.initDevice(device)
        if handle == self.ERR_USB_INIT1:
            print("Upload not possible")
            print("Try to restart the bootloader mode")
            self.REPORTE=self.REPORTE + "no es posible hacer el Upload, prueba apretar RESET y volver a probar"
            return self.REPORTE
        # find out the processor
        device_id = self.getDeviceID(handle)
        proc = self.getDeviceName(device_id)
        print (" - with PIC%s (id=%X)" % (proc, device_id))
        #self.REPORTE=self.REPORTE+(" - con el micro controlador PIC%s (id=%X)" % (proc, device_id))
        if proc != board.proc:
            print("Aborting: program compiled for %s but device has %s" % (board.proc, proc))
            self.REPORTE=self.REPORTE+("Aborting: program compiled for %s but device has %s" % (board.proc, proc))
            self.closeDevice(handle)
            return self.REPORTE
        # find out flash memory size
        # --------------------------------------------------------------
        memfree = board.memend - board.memstart;
        print(" - with %d bytes free (%d KB)" % (memfree, memfree/1024))
        print("  165, from 0x%05X to 0x%05X" % (board.memstart, board.memend))
        #self.REPORTE=self.REPORTE+(" - with %d bytes free (%d KB)" % (memfree, memfree/1024))
        #self.REPORTE=self.REPORTE+("   from 0x%05X to 0x%05X" % (board.memstart, board.memend))

        # find out bootloader version
        # --------------------------------------------------------------
        #product = handle.getString(device.iProduct, 30)
        #manufacturer = handle.getString(device.iManufacturer, 30)
        #self.add_report(" - with USB bootloader v%s" % self.getVersion(handle))

        # start writing
        # --------------------------------------------------------------
        print("Uploading user program ...")
        self.REPORTE=self.REPORTE+("El programa ")

        status = self.writeHex(handle, filename, board)
        if status == self.ERR_HEX_RECORD:
            print("Aborting: record error")
            self.REPORTE=self.REPORTE+("Aborting: record error")

            self.closeDevice(handle)
            return self.REPORTE
        elif status == self.ERR_HEX_CHECKSUM:
            print("Aborting: checksum error")
            self.REPORTE=self.REPORTE+("Aborting: checksum error")

            self.closeDevice(handle)
            return self.REPORTE
        elif status == self.ERR_USB_ERASE:
            print("Aborting: erase error")
            self.REPORTE=self.REPORTE+("Aborting: erase error")

            self.closeDevice(handle)
            return self.REPORTE
        elif status == self.ERR_NONE:
            print(os.path.basename(filename) + " successfully uploaded")
            self.REPORTE=self.REPORTE+(os.path.basename(filename) + " fue cargado EXITOSAMENTE.")

        # reset and start start user's app.
            self.resetDevice(handle)
            self.closeDevice(handle)
            return self.REPORTE
        else:
            print("Aborting: unknown error")
            self.REPORTE=self.REPORTE+("Aborting: unknown error")

            return self.REPORTE
# ----------------------------------------------------------------------
