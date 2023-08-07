#!/bin/bash
gcc main.c -S -o main.s -nostdlib -Os
as --64 asm.s -o asm.o -Os
as --64 main.s -o main.o -Os
ld asm.o main.o -o sus -nostdlib -Os -z noseparate-code 
strip --remove-section .note.gnu.property --remove-section .gnu.hash \
	--remove-section --stack=128 sus
