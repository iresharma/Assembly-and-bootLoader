# author: @iresharma

nasm -f bin $1.asm -o bin/$1.bin
echo $?
if [[ $? -eq 0 ]]; then
    echo "Build successFull"
    qemu-system-x86_64 bin/$1.bin
else
    echo "Binary build failed"
fi