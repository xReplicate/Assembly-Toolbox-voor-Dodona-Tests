Maak een controleverloopgraaf van volgende assemblycode die het vijfvoud van een getal berekent:

```
vijfvoud:   push edx
            push ebx
            cmp eax,0
            jg positief
            xor eax, eax
            pop ebx
            pop edx
            ret
positief:
            mov ebx, 5
            imul ebx
            pop ebx
            pop edx
            ret
main:       mov eax, 6
            call vijfvoud
            mov g, eax
```
