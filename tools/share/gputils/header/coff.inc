  list
; coff.inc - gputils header file
  nolist

; Copyright (C) 2004 Craig Franklin
;
; Redistribution and use in source and binary forms, with or without 
; modification, are permitted provided that the following conditions are met:
;
;  1. Redistributions of source code must retain the above copyright notice, 
;     this list of conditions and the following disclaimer.
;  2. Redistributions in binary form must reproduce the above copyright notice,
;     this list of conditions and the following disclaimer in the 
;     documentation and/or other materials provided with the distribution.
;  3. The name of the author may not be used to endorse or promote products 
;     derived from this software without specific prior written permission.
;
; THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR 
; IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
; OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
; NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
; SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
; PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; 
; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
; WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
; OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
; ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

; Size of a symbol, use for creating auxiliary entries. 
#define SYMBOL_SIZE 18

; Symbol section numbers 
#define N_DEBUG -2
#define N_ABS   -1
#define N_UNDEF 0
#define N_SCNUM 

; Basic symbol types  
#define T_NULL      0   ; null 
#define T_VOID      1   ; void 
#define T_CHAR      2   ; character 
#define T_SHORT     3   ; short integer 
#define T_INT       4   ; integer 
#define T_LONG      5   ; long integer 
#define T_FLOAT     6   ; floating point 
#define T_DOUBLE    7   ; double length floating point 
#define T_STRUCT    8   ; structure 
#define T_UNION     9   ; union 
#define T_ENUM      10  ; enumeration 
#define T_MOE       11  ; member of enumeration 
#define T_UCHAR     12  ; unsigned character 
#define T_USHORT    13  ; unsigned short 
#define T_UINT      14  ; unsigned integer 
#define T_ULONG     15  ; unsigned long 
#define T_LNGDBL    16  ; long double floating point 
#define T_SLONG     17  ; short long 
#define T_USLONG    18  ; unsigned short long 

; Derived types 
#define DT_NON      0  ; no derived type          
#define DT_PTR      1  ; pointer 
#define DT_FCN      2  ; function 
#define DT_ARY      3  ; array 

; Storage classes 
#define C_EFCN      0xff ; physical end of function 
#define C_NULL      0    ; null 
#define C_AUTO      1    ; automatic variable 
#define C_EXT       2    ; external symbol 
#define C_STAT      3    ; static 
#define C_REG       4    ; register variable 
#define C_EXTDEF    5    ; external definition 
#define C_LABEL     6    ; label 
#define C_ULABEL    7    ; undefined label 
#define C_MOS       8    ; member of structure 
#define C_ARG       9    ; function argument 
#define C_STRTAG    10   ; structure tag 
#define C_MOU       11   ; member of union 
#define C_UNTAG     12   ; union tag 
#define C_TPDEF     13   ; type definition 
#define C_USTATIC   14   ; undefined static 
#define C_ENTAG     15   ; enumeration tag 
#define C_MOE       16   ; member of enumeration 
#define C_REGPARM   17   ; register parameter 
#define C_FIELD     18   ; bit field 
#define C_AUTOARG   19   ; auto argument 
#define C_LASTENT   20   ; dummy entry (end of block) 
#define C_BLOCK     100  ; ".bb" or ".eb" 
#define C_FCN       101  ; ".bf" or ".ef" 
#define C_EOS       102  ; end of structure 
#define C_FILE      103  ; file name 
#define C_LINE      104  ; line number reformatted as symbol table entry 
#define C_ALIAS     105  ; duplicate tag 
#define C_HIDDEN    106  ; ext symbol in dmert public lib 
#define C_EOF       107  ; end of file 
#define C_LIST      108  ; absoulte listing on or off 
#define C_SECTION   109  ; section 

; Begin Function Code
.bf macro
  .def ".bf", type = T_NULL, class = C_FCN
  endm

; End Function
.ef macro
  .def ".ef", type = T_NULL, class = C_FCN
  endm

; Begin Basic Block
.bb macro
  .def ".bb", type = T_NULL, class = C_BLOCK 
  endm

; End of Basic Block
.eb macro
  .def ".eb", type = T_NULL, class = C_BLOCK
  endm

; Assertion
.assert macro x
  .direct "a", x
  endm

; Simulator Command
.sim macro x
  .direct "e", x
  endm

; Printf Command
.print macro x
  .direct "f", x
  endm

; Log Command
.log macro x
  .direct "l", x
  endm

  list
