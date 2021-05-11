[org 0x7c00]
mov bp, 0x7c00
mov sp, bp
mov bx, String
call print
jmp $

print:
    mov ah, 0x0e
    for:
    cmp [bx], byte '~'
    je endfor
        mov al, [bx]
        int 0x10
        inc bx
        jmp for
    endfor:
    ret

String:
    db 'Boot loader can now read strings !~',0


times 510-($-$$) db 0
db 0x55, 0xaa