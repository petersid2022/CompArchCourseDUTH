erg1.dmp: erg1.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input erg1.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d erg1.elf>erg1.dmp

erg1.elf: erg1.c linker.ld times.s bootstrap.s
	riscv64-unknown-elf-gcc -O3 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T linker.ld bootstrap.s erg1.c times.s -o erg1.elf

clean:
	rm erg1.elf erg1.dmp
