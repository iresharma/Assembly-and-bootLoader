[org 0x7c00]

mov [BOOT_DISK], dl
call readDisk

jmp $

%include 'diskReader.asm'
%include 'printString.asm'

times 508 db 0
db 0x55, 0xaa