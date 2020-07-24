#!/bin/zsh
rm ex1
rm ex1.o
clear
nasm -f macho64 ex1.asm || exit
echo "assembled"
ld -macosx_version_min 10.14.0 -no_pie -lSystem -o ex1 ex1.o && echo "linked"
# ld -static -o ex1 -e start ex1.o && echo "linked"
echo "----------"
./ex1