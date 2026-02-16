.section .data
msg:    .ascii "Hello, World!\n"
len = . - msg

.section .text
.global _start
_start:
    mov $1, %rax        # sys_write
    mov $1, %rdi        # stdout
    mov $msg, %rsi      # address of message
    mov $len, %rdx      # length
    syscall

    mov $60, %rax       # sys_exit
    mov $0, %rdi        # status
    syscall
    