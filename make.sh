#!/bin/bash
as sus.s -o sus.o -Os
ld sus.o -o sus -static -s -Os -nostdlib -z noseparate-code
strip --remove-section .note.gnu.property --remove-section .gnu.hash \
	--remove-section --stack=128 sus
