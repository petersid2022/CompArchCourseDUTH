  .text
  .align 4
  .global times

times:
  mv a0, a0
  li x6, 2
  addi a1, a0, 10
  mul a2, a1, x6
