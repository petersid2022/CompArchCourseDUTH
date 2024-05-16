.text
.align 4
.global times
times:
  li x6, 20
  li x7, 20
  li x8, 39
  li x9, 1

  add x10, x6, x7
  sub x11, x10, x8 # EX needs ALU result that is in MEM stage
  add x12, x11, x9
  ret
