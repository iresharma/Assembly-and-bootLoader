# author: @iresharma

nasm -f bin $1.asm -o bin/$1.bin
echo $?
if[[ $? eq 0 ]] then
    qemu-system-x86_64 bin/$1.bin
fi