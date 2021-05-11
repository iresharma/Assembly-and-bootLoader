PROGRAM_SPACE equ 0x7e00

readDisk:
    mov ah, 0x02
    mov bx, PROGRAM_SPACE
    mov al, 2
    mov dl, [BOOT_DISK]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02

    int 0x13

    jc diskReadError
    ret

BOOT_DISK:
    db 0

errorMesasge:
    db 'Could not read disk !~',0

diskReadError:
    mov bx, errorMesasge
    call print

    jmp $

