.global syscall
.global _ZN5mlibc11sys_tcb_setEPv
.global __m68k_read_tp

syscall:
    move.l #3, %a1
    rts
_ZN5mlibc11sys_tcb_setEPv:
    move.l #3, %a1
    rts
__m68k_read_tp:
    move.l #0, %a1
    rts

.hidden syscall