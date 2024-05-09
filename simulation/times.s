  .text
  .align 4
  .global times

times:
  li x5, 8
  li x6, 2
  li x7, 10
  add a1, x5, x6
  mul a2, a1, x7
