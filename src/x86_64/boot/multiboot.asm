global start
extern kernel_entry 

section .bss
    resb 8192                        
    stack:

section .boot
_start:
    dd 0xE85250D6     ; magic number
    dd 0              ; protected mode code
    dd _start - _end  ; length
    dd 0x100000000 - (0xe85250d6 + 0 + (_start - _end))
    dw 0  ; type
    dw 0  ; flags
    dd 8  ; size
_end:

section .text
bits 32s
start:
   cli                     
   mov esp, stack    
   call kernel_entry
   hlt       