mov ah, 0x0e
mov al, 65
int 0x10
mov bl, 0
jmp check
check:
    cmp al, 122
    je com
    cmp bl, 0
    je small
    jmp cap

cap:
    sub al, 31
    int 0x10
    mov bl, 0
    jmp check

small:
    add al, 33
    int 0x10
    mov bl, 1
    jmp check

com:
    jmp $
    times 510-($-$$) db 0
    db 0x55, 0xaa