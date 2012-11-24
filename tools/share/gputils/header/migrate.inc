  LIST
; MIGRATE.INC
  NOLIST
; This file provides macros for ease of migration from
; 16 and 17 devices to 18 devices.
; As is, it must be assembled with case sensitivity enabled (/c+).
; To assemble with /c-, remove the lowercase (or uppercase) version
; of each macro.

  #define clrw clrf WREG 
  #define CLRW CLRF WREG
  #define negw negf WREG
  #define NEGW NEGF WREG
  #define movpf movff
  #define MOVPF MOVFF
  #define movfp movff
  #define MOVFP MOVFF
  #define lcall call
  #define LCALL CALL
  #define lgoto goto
  #define LGOTO GOTO

  LIST

