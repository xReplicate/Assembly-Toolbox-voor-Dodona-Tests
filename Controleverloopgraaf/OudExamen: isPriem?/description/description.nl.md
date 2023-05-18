Maak een controleverloopgraaf van volgende assemblycode die berekent of een getal priem is:

```
_ispriem:
        subq $8, %rsp
        cmpl $1, %edi
        jle .L2
        movl %esi, %edx
        movl %esi, %eax
        sarl $31, %edx
        idivl %edi
        movl $0, %eax
        testl %edx, %edx
        je .L4
        subl $1, %edi
        call _ispriem
        jmp .L4
.L2:    cmpl $1, %esi
        setg %al
        movzbl %al, %eax
.L4:    addq $8, %rsp
        ret
ispriem:
        subq $8, %rsp
        movl %edi, %esi
        sarl $1, %edi
        call _ispriem
        addq $8, %rsp
        ret
main:
        subq $8, %rsp
        movl $11, %edi
        call ispriem
        movl %eax, g
        addq $8, %rsp
        ret
```

```
int _ispriem(int n, int m) {
    if (n>1)
    if (m % n == 0)
    return 0;
else
    return _ispriem(n-1, m);
else
    return m > 1;
}

int ispriem(int m) {
    return _ispriem(m>>1,m);
}

int g;

main() {
    g = ispriem(11);
}
```
