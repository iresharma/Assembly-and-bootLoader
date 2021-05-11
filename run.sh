# author: @iresharma

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
YELLOW='\033[1;33m'

echo "$YELLOW"
nasm -f bin $1.asm -o bin/$1.bin
if [[ $? -eq 0 ]]; then
    echo ""
    echo "${GREEN}Build successFull${YELLOW}"
    qemu-system-x86_64 bin/$1.bin
else
    echo ""
    echo "${RED}Binary build failed${NC}"
fi