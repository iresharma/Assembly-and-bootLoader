jmp $                       ; jpm back to itself so the bootloader does nothing
times 510-($ - $$) db 0     ; times -> repeat 
                            ; 510-($-$$) -> 510 - 3(prev statement)
                            ; db -> define byte to 0
db 0x55, 0xaa               ; defining last 2 bytes as 0x55 and 0xaa because necessary