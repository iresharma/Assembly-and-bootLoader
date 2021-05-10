mov ah, 0x0e
mov al, 65
int 0x10
alpha:
    inc al
    int 0x10
    cmp al, 90
    je done
    jmp alpha

done:
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa