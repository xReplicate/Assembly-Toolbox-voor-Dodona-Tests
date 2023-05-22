Maak een controleverloopgraaf van volgende assemblycode die de absolute waarde van een getal berekent:

```
abs:  push edx
      mov edx, eax
      cmp edx, 0
      jns pos
      neg edx
pos:  mov eax, edx
      pop edx
      ret
main: mov eax, 2
      call abs
      mov r, eax
```

Deze assemblycode is afkomstig van het volgende programma:

```
int abs(int n) {
      if (n < 0)
            return -n;
      else
            return n;
      }
int main() {
      int r;
      r = abs(2);
}
```
