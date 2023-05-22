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

Deze assemblycode is afkomstig van het volgende programma:

```
int vijfvoud(int n){
    if (n > 0)
        return n * 5;
    else
        return 0;
}

int g;

main(){
    g = vijfvoud(6);
}
```
