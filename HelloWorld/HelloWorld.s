.global _main
.align 2

_main:
    mov x0, #1 // 1 represents Stdout
    adr x1, helloworld
    mov x2, #13 // Length of helloworld string
    mov x16, #4 // 4 represents MacOS' write system call
    svc 0

    mov x0, #0 // 0 return code
    mov x16, #1 // Command 1 terminates the code
    svc 0

helloworld:
    .ascii "Hello World!\n"
