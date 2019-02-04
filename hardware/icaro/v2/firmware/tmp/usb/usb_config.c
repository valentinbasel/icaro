#include "usb_config.h"
//#include <typedef.h>

/**
This togehter with the coresponding usbconfig.c file needs to be filled up by the user according to implem
ent the USB functionality. The names are fixed since they are used inside the usb.h and usb.c file.<br>
EP0 is always filled up by the library so you dont really need to worry about. The user just needs to prov
ide the right device, config and interface descriptor for it.<br>
The following things need to be filled up by the user (see picUSB.h for a description of the structs)
- The device descriptor.
- One configuration descriptor (multiple configuration not yet suppoerted)
- One interface descriptor for each desired interface.
- One endpoint descriptor for each endpoint in each interface.
**/

/* usb device descriptor */

#ifdef USB_USE_CDC
__code USB_Device_Descriptor libdevice_descriptor =
{
    sizeof(USB_Device_Descriptor),      // Size of this descriptor in bytes
    DEVICE_DESCRIPTOR,                  // Device descriptor type
    0x0200,                             // USB Spec Release Number in BCD format (0x0100 for USB 1.0, 0x0110 for USB1.1, 0x0200 for USB2.0)
    0x02,                               // Class Code
    0x00,                               // Subclass code
    0x00,                               // Protocol code
    EP0_BUFFER_SIZE,                    // Max packet size for EP0
    0x04D8,                             // Vendor ID, microchip=0x04D8
    0xFEAB,                             // Product ID 0xFEAA Pinguino
    0x0000,                             // Device release number in BCD format
    0,                                  // Manufacturer string index
    1,                                  // Product string index
    0,                                  // Device serial number string index
    1                                   // Number of possible configurations
};
#endif

#ifdef USB_USE_BULK
__code USB_Device_Descriptor libdevice_descriptor =
{
    sizeof(USB_Device_Descriptor),      // Size of this descriptor in bytes
    DEVICE_DESCRIPTOR,                  // Device descriptor type
    0x0200,                             // USB Spec Release Number in BCD format (0x0100 for USB 1.0, 0x0110 for USB1.1, 0x0200 for USB2.0)
    0xff,                               // Class Code
    0x00,                               // Subclass code
    0xff,                               // Protocol code
    EP0_BUFFER_SIZE,                    // Max packet size for EP0
    0x04D8,                             // Vendor ID, microchip=0x04D8
    0xFEAA,                             // Product ID 0xFEAA Pinguino
    0x0000,                             // Device release number in BCD format
    0,                                  // Manufacturer string index
    1,                                  // Product string index
    0,                                  // Device serial number string index
    1                                   // Number of possible configurations
};
#endif

#ifdef USB_USE_CDC
__code USB_Configuration_Descriptor libconfiguration_descriptor = {
    // Configuration Descriptor Header
    {sizeof(USB_Configuration_Descriptor_Header),       // Size of this descriptor in bytes
    CONFIGURATION_DESCRIPTOR,                   // CONFIGURATION descriptor type
    sizeof(USB_Configuration_Descriptor),       // Total length of data for this configuration
    2,                                          // Number of interfaces in this configuration
    1,                                          // Index value of this configuration
    0,                                          // Configuration string index
    DEFAULT | POWERED,                          // Attributes
    20},                                         // Maximum Power Consumption in 2mA units
    //------------------------------------------------------------------------------------
    // call management Descriptor with IN EP
    {sizeof(USB_Interface_Descriptor),          // Size of this descriptor in bytes
    INTERFACE_DESCRIPTOR,                       // Interface descriptor type
    0,                                          // Interface Number
    0,                                          // Alternate Setting Number
    1,                                          // Number of endpoints in this interface
    USB_CLASS_COMM,                             // Class code
    ABSTRACT_CONTROL_MODEL,                     // Subclass code
    V25TER,                                     // Protocol code V25TER
    0},                                         // Index of String Descriptor Describing this interface
    // Header functional descriptor
    {sizeof(USB_Header_Functional_Descriptor),  // size of descriptor
    USB_DT_CS_INTERFACE,
    USB_CDC_HEADER_TYPE,
    0x10,
    0x01},
    // ACM descriptor
    {sizeof(USB_Abstract_Control_Management_Functional_Descriptor),
    USB_DT_CS_INTERFACE,
    USB_CDC_ACM_TYPE,
    0x00},                       
    // union descriptor
    {sizeof(USB_Union_Functional_Descriptor),
    USB_DT_CS_INTERFACE,
    USB_CDC_UNION_TYPE,
    0x00,                               
    0x01},
    // call management descriptor
    {sizeof(USB_Call_Management_Functional_Descriptor),
    USB_DT_CS_INTERFACE,
    USB_CDC_CALL_MANAGEMENT_TYPE,
    0x00,
    0x01},   
    // Endpoint 1 Cpnfig
    {sizeof(USB_Endpoint_Descriptor),           // Size of Descriptor
    ENDPOINT_DESCRIPTOR,                        // Descriptor Type
    0x82,                                       // Endpoint Address
    0x03,                                       // Attribute = Int
    CDC_IN_EP_SIZE,                             // Packet Size
    0x02},
    {sizeof(USB_Interface_Descriptor),          // Size of this descriptor in bytes
    INTERFACE_DESCRIPTOR,                       // Interface descriptor type
    1,                                          // Interface Number
    0,                                          // Alternate Setting Number
    2,                                          // Number of endpoints in this interface
    USB_CLASS_CDC_DATA,                         // Class code
    0x00,                                       // Subclass code
    0x00,                                       // No Protocol
    0},       
    // Endpoint 2 Out
    {sizeof(USB_Endpoint_Descriptor),           // Size of Descriptor
    ENDPOINT_DESCRIPTOR,                        // Descriptor Type
    0x03,                                       // Endpoint Address
    0x02,                                       // Attribute = Bulk Transfer
	0x40,0x00,
    0x00},                                      // Poll Intervall
    // Endpoint 2 IN
    {sizeof(USB_Endpoint_Descriptor),           // Size of Descriptor
    ENDPOINT_DESCRIPTOR,                        // Descriptor Type
    0x83,                                       // Endpoint Address
    0x02,                                       // Attribute = Bulk Transfer
	0x40,0x00,
    0x00}
};
#endif

#ifdef USB_USE_BULK
__code USB_Configuration_Descriptor libconfiguration_descriptor = {
    // Configuration Descriptor Header
    {sizeof(USB_Configuration_Descriptor_Header),       // Size of this descriptor in bytes
    CONFIGURATION_DESCRIPTOR,                   // CONFIGURATION descriptor type
    sizeof(USB_Configuration_Descriptor_Header),       // Total length of data for this configuration
    1,                                          // Number of interfaces in this configuration
    3,                                          // Index value of this configuration
    0,                                          // Configuration string index
    0,				                            // Attributes
    20}, 
		{sizeof(USB_Interface_Descriptor),          // Size of this descriptor in bytes
		INTERFACE_DESCRIPTOR,                       // Interface descriptor type
		0,                                          // Interface Number
		0,                                          // Alternate Setting Number
		2,                                          // Number of endpoints in this interface
		0xff,                             			// Class code
		0xff,				                     	// Subclass code
		0xff,                                     	// vendor specific
		4},
			// Endpoint 1 Out
			{sizeof(USB_Endpoint_Descriptor),           // Size of Descriptor
			ENDPOINT_DESCRIPTOR,                        // Descriptor Type
			0x01,                                       // Endpoint Address
			0x02,                                       // Attribute = Bulk Transfer
			0x40,0x00,
			0x00},                                      // Poll Intervall
			// Endpoint 2 IN
			{sizeof(USB_Endpoint_Descriptor),           // Size of Descriptor
			ENDPOINT_DESCRIPTOR,                        // Descriptor Type
			0x82,                                       // Endpoint Address
			0x02,                                       // Attribute = Bulk Transfer
			0x40,0x00,
			0x00}};		     	
#endif

/* String descriptors for the USB device */
__code u8 libstring_descriptor[40][3] = {
    {40,STRING_DESCRIPTOR,'P',0x00,'i',0x00,'n',0x00,'g',0x00,'u',0x00,'i',0x00,'n',0x00,'o',0x00,' ',0x00,'J',0x00,'P',0x00,' ',0x00,'M',0x00,'A',0x00,'N',0x00,'D',0x00,'O',0x00,'N',0x00,' ',0x00},
    {12, STRING_DESCRIPTOR, 'P',0x00,'o',0x00,'r',0x00,'n',0x00,'0',0x00},
    {12, STRING_DESCRIPTOR, 'P',0x00,'o',0x00,'r',0x00,'n',0x00,'0',0x00}
};
