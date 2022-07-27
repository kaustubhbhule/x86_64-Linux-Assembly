# x86_64 Linux Assembly

### Installation
```sh
$ sudo apt-get install nasm
```

### Compile Code
```sh
$ nasm -f elf64 -o file.o file.asm
```

### Link Object File
```sh
$ ld file.o -o file
```

### Execute
```sh
$ ./file
```
