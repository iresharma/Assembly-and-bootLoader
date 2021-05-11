# author: @iresharma

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'

echo "$YELLOW"
nasm -f bin $1.asm -o bin/$1.bin
if [[ $? -eq 1 ]]; then
    echo "${RED} $1 failed to compile${YELLOW}"
    exit 0
else
    echo "${BLUE} $1 compiled ${YELLOW}"
fi
nasm -f bin $2.asm -o bin/$2.bin
if [[ $? -eq 0 ]]; then
    echo "${BLUE} $2 compiled ${NC}"
    echo ""
    cat bin/$1.bin bin/$2.bin >> bin/OS.bin
    echo "${BLUE} OS file built ${NC}"
    echo ""
    echo "${GREEN}Build successFull 🚀 ${YELLOW}"
    qemu-system-x86_64 bin/OS.bin
else
    echo ""
    echo "${RED}Binary build failed${NC}"
fi