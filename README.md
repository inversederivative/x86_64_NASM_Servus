# Servus!

---

# Introduction

This is a simple Hello World file, written in x86_64 assembly, to be 
compiled with NASM and linked with GCC, as it uses a C stdlib function
(printf). 

---

# Building

Servus.asm

To build, simply run 
    make

Then run with
    ./Servus

---

Alternatively:

To assemble this file: 
    nasm -f elf64 Servus.asm

To link, because we're calling the C stdlib, we need to use gcc
    gcc -m64 -o Servus Servus.o 

To execute simply:
    ./Servus

---

