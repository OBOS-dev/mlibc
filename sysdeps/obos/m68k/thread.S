.global __mlibc_thread_entry

__mlibc_thread_entry:
    bra.s __mlibc_thread_entry

.section .note.GNU-stack,"",%progbits
