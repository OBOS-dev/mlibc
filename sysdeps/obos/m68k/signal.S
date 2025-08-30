.global __mlibc_restorer

__mlibc_restorer:
    bra.s __mlibc_restorer

.section .note.GNU-stack,"",%progbits
