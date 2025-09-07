#include <obos/syscall.h>
#include <mlibc/tcb.hpp>

#define Sys_SetTCB 0x80000000
#define Sys_GetTCB 0x80000001

extern "C" void* __m68k_read_tp()
{
    // see mlibc::get_current_tcb
    return (void*)(syscall0(Sys_GetTCB) + 0x7000 + sizeof(Tcb));
}

namespace mlibc {
    int sys_tcb_set(void *pointer)
    {
        syscall1(Sys_SetTCB, pointer);
        return 0;
    }
}