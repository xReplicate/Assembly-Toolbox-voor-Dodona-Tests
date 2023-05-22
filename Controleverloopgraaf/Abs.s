abs:  push rdx
      mov rdx, rax
      cmp rdx, 0
      jns pos
      neg rdx
pos:  mov rax, rdx
      pop rdx
      ret
main: mov rax, 2
      call abs
      mov r, rax