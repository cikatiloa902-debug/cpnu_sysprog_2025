        .file   "example.c"
        .intel_syntax noprefix
# GNU C17 (Compiler-Explorer-Build-gcc--binutils-2.38) version 12.2.0 (x86_64-linux-gnu)
#       compiled by GNU C version 9.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -g -O0
        .text
.Ltext0:
        .file 0 "/app" "/app/example.c"
        .globl  fibonacci
        .type   fibonacci, @function
fibonacci:
.LFB0:
        .file 1 "/app/example.c"
        .loc 1 3 46
        .cfi_startproc
        push    rbp     #
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        mov     rbp, rsp  #,
        .cfi_def_cfa_register 6
        push    rbx     #
        sub     rsp, 24   #,
        .cfi_offset 3, -24
        mov     DWORD PTR [rbp-20], edi   # n, n
# /app/example.c:4:     if (n == 0) return 0;
        .loc 1 4 8
        cmp     DWORD PTR [rbp-20], 0     # n,
        jne     .L2       #,
# /app/example.c:4:     if (n == 0) return 0;
        .loc 1 4 24 discriminator 1
        mov     eax, 0    # _5,
        jmp     .L3       #
.L2:
# /app/example.c:5:     if (n == 1) return 1;
        .loc 1 5 8
        cmp     DWORD PTR [rbp-20], 1     # n,
        jne     .L4       #,
# /app/example.c:5:     if (n == 1) return 1;
        .loc 1 5 24 discriminator 1
        mov     eax, 1    # _5,
        jmp     .L3       #
.L4:
# /app/example.c:7:     return fibonacci(n - 1) + fibonacci(n - 2);
        .loc 1 7 12
        mov     eax, DWORD PTR [rbp-20]   # tmp88, n
        sub     eax, 1    # _1,
        mov     edi, eax  #, _1
        call    fibonacci       #
        mov     rbx, rax  # _2,
# /app/example.c:7:     return fibonacci(n - 1) + fibonacci(n - 2);
        .loc 1 7 31
        mov     eax, DWORD PTR [rbp-20]   # tmp89, n
        sub     eax, 2    # _3,
        mov     edi, eax  #, _3
        call    fibonacci       #
# /app/example.c:7:     return fibonacci(n - 1) + fibonacci(n - 2);
        .loc 1 7 29
        add     rax, rbx  # _5, _2
.L3:
# /app/example.c:8: }
        .loc 1 8 1
        mov     rbx, QWORD PTR [rbp-8]    #,
        leave   
        .cfi_def_cfa 7, 8
        ret     
        .cfi_endproc
.LFE0:
        .size   fibonacci, .-fibonacci
        .section        .rodata
        .align 8
.LC0:
        .string "Enter the Fibonacci number you want to calculate (0-93): "
.LC1:
        .string "%d"
.LC2:
        .string "Invalid input."
        .align 8
.LC3:
        .string "Please enter a number between 0 and 93."
        .align 8
.LC4:
        .string "The %dth Fibonacci number is %llu\n"
        .text
        .globl  main
        .type   main, @function
main:
.LFB1:
        .loc 1 10 16
        .cfi_startproc
        push    rbp     #
        .cfi_def_cfa_offset 16
        .cfi_offset 6, -16
        mov     rbp, rsp  #,
        .cfi_def_cfa_register 6
        sub     rsp, 16   #,
# /app/example.c:13:     printf("Enter the Fibonacci number you want to calculate (0-93): ");
        .loc 1 13 5
        mov     edi, OFFSET FLAT:.LC0     #,
        mov     eax, 0    #,
        call    printf  #
# /app/example.c:15:     if (scanf("%d", &n) != 1) {
        .loc 1 15 9
        lea     rax, [rbp-4]      # tmp91,
        mov     rsi, rax  #, tmp91
        mov     edi, OFFSET FLAT:.LC1     #,
        mov     eax, 0    #,
        call    __isoc99_scanf  #
# /app/example.c:15:     if (scanf("%d", &n) != 1) {
        .loc 1 15 8
        cmp     eax, 1    # _1,
        je      .L6 #,
# /app/example.c:16:         printf("Invalid input.\n");
        .loc 1 16 9
        mov     edi, OFFSET FLAT:.LC2     #,
        call    puts    #
# /app/example.c:17:         return 1;
        .loc 1 17 16
        mov     eax, 1    # _8,
        jmp     .L10      #
.L6:
# /app/example.c:20:     if (n < 0 || n > 93) {
        .loc 1 20 11
        mov     eax, DWORD PTR [rbp-4]    # n.0_2, n
# /app/example.c:20:     if (n < 0 || n > 93) {
        .loc 1 20 8
        test    eax, eax        # n.0_2
        js      .L8 #,
# /app/example.c:20:     if (n < 0 || n > 93) {
        .loc 1 20 20 discriminator 1
        mov     eax, DWORD PTR [rbp-4]    # n.1_3, n
# /app/example.c:20:     if (n < 0 || n > 93) {
        .loc 1 20 15 discriminator 1
        cmp     eax, 93   # n.1_3,
        jle     .L9       #,
.L8:
# /app/example.c:21:         printf("Please enter a number between 0 and 93.\n");
        .loc 1 21 9
        mov     edi, OFFSET FLAT:.LC3     #,
        call    puts    #
# /app/example.c:22:         return 1;
        .loc 1 22 16
        mov     eax, 1    # _8,
        jmp     .L10      #
.L9:
# /app/example.c:25:     printf("The %dth Fibonacci number is %llu\n", n, fibonacci(n));
        .loc 1 25 5
        mov     eax, DWORD PTR [rbp-4]    # n.2_4, n
        mov     edi, eax  #, n.3_5
        call    fibonacci       #
        mov     rdx, rax  # _6,
        mov     eax, DWORD PTR [rbp-4]    # n.4_7, n
        mov     esi, eax  #, n.4_7
        mov     edi, OFFSET FLAT:.LC4     #,
        mov     eax, 0    #,
        call    printf  #
# /app/example.c:26:     return 0;
        .loc 1 26 12
        mov     eax, 0    # _8,
.L10:
# /app/example.c:27: }
        .loc 1 27 1 discriminator 1
        leave   
        .cfi_def_cfa 7, 8
        ret     
        .cfi_endproc
.LFE1:
        .size   main, .-main
.Letext0:
        .file 2 "/usr/include/stdio.h"
        .section        .debug_info,"",@progbits
.Ldebug_info0:
        .long   0x10e
        .value  0x5
        .byte   0x1
        .byte   0x8
        .long   .Ldebug_abbrev0
        .uleb128 0x5
        .long   .LASF13
        .byte   0x1d
        .long   .LASF0
        .long   .LASF1
        .quad   .Ltext0
        .quad   .Letext0-.Ltext0
        .long   .Ldebug_line0
        .uleb128 0x1
        .byte   0x8
        .byte   0x7
        .long   .LASF2
        .uleb128 0x1
        .byte   0x4
        .byte   0x7
        .long   .LASF3
        .uleb128 0x1
        .byte   0x1
        .byte   0x8
        .long   .LASF4
        .uleb128 0x1
        .byte   0x2
        .byte   0x7
        .long   .LASF5
        .uleb128 0x1
        .byte   0x1
        .byte   0x6
        .long   .LASF6
        .uleb128 0x1
        .byte   0x2
        .byte   0x5
        .long   .LASF7
        .uleb128 0x6
        .byte   0x4
        .byte   0x5
        .string "int"
        .uleb128 0x1
        .byte   0x8
        .byte   0x5
        .long   .LASF8
        .uleb128 0x1
        .byte   0x1
        .byte   0x6
        .long   .LASF9
        .uleb128 0x7
        .long   0x66
        .uleb128 0x8
        .byte   0x8
        .long   0x6d
        .uleb128 0x9
        .long   .LASF14
        .byte   0x2
        .value  0x1d2
        .byte   0xc
        .long   .LASF15
        .long   0x58
        .long   0x94
        .uleb128 0x2
        .long   0x72
        .uleb128 0x3
        .byte   0
        .uleb128 0xa
        .long   .LASF16
        .byte   0x2
        .value  0x16b
        .byte   0xc
        .long   0x58
        .long   0xac
        .uleb128 0x2
        .long   0x72
        .uleb128 0x3
        .byte   0
        .uleb128 0x4
        .long   .LASF10
        .byte   0xa
        .byte   0x5
        .long   0x58
        .quad   .LFB1
        .quad   .LFE1-.LFB1
        .uleb128 0x1
        .byte   0x9c
        .long   0xdb
        .uleb128 0xb
        .string "n"
        .byte   0x1
        .byte   0xb
        .byte   0x9
        .long   0x58
        .uleb128 0x2
        .byte   0x91
        .sleb128 -20
        .byte   0
        .uleb128 0x4
        .long   .LASF11
        .byte   0x3
        .byte   0x14
        .long   0x10a
        .quad   .LFB0
        .quad   .LFE0-.LFB0
        .uleb128 0x1
        .byte   0x9c
        .long   0x10a
        .uleb128 0xc
        .string "n"
        .byte   0x1
        .byte   0x3
        .byte   0x2b
        .long   0x35
        .uleb128 0x2
        .byte   0x91
        .sleb128 -36
        .byte   0
        .uleb128 0x1
        .byte   0x8
        .byte   0x7
        .long   .LASF12
        .byte   0
        .section        .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
        .uleb128 0x1
        .uleb128 0x24
        .byte   0
        .uleb128 0xb
        .uleb128 0xb
        .uleb128 0x3e
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0xe
        .byte   0
        .byte   0
        .uleb128 0x2
        .uleb128 0x5
        .byte   0
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x3
        .uleb128 0x18
        .byte   0
        .byte   0
        .byte   0
        .uleb128 0x4
        .uleb128 0x2e
        .byte   0x1
        .uleb128 0x3f
        .uleb128 0x19
        .uleb128 0x3
        .uleb128 0xe
        .uleb128 0x3a
        .uleb128 0x21
        .sleb128 1
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x27
        .uleb128 0x19
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x11
        .uleb128 0x1
        .uleb128 0x12
        .uleb128 0x7
        .uleb128 0x40
        .uleb128 0x18
        .uleb128 0x7c
        .uleb128 0x19
        .uleb128 0x1
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x5
        .uleb128 0x11
        .byte   0x1
        .uleb128 0x25
        .uleb128 0xe
        .uleb128 0x13
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0x1f
        .uleb128 0x1b
        .uleb128 0x1f
        .uleb128 0x11
        .uleb128 0x1
        .uleb128 0x12
        .uleb128 0x7
        .uleb128 0x10
        .uleb128 0x17
        .byte   0
        .byte   0
        .uleb128 0x6
        .uleb128 0x24
        .byte   0
        .uleb128 0xb
        .uleb128 0xb
        .uleb128 0x3e
        .uleb128 0xb
        .uleb128 0x3
        .uleb128 0x8
        .byte   0
        .byte   0
        .uleb128 0x7
        .uleb128 0x26
        .byte   0
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x8
        .uleb128 0xf
        .byte   0
        .uleb128 0xb
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0x9
        .uleb128 0x2e
        .byte   0x1
        .uleb128 0x3f
        .uleb128 0x19
        .uleb128 0x3
        .uleb128 0xe
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0x5
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x6e
        .uleb128 0xe
        .uleb128 0x27
        .uleb128 0x19
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x3c
        .uleb128 0x19
        .uleb128 0x1
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0xa
        .uleb128 0x2e
        .byte   0x1
        .uleb128 0x3f
        .uleb128 0x19
        .uleb128 0x3
        .uleb128 0xe
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0x5
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x27
        .uleb128 0x19
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x3c
        .uleb128 0x19
        .uleb128 0x1
        .uleb128 0x13
        .byte   0
        .byte   0
        .uleb128 0xb
        .uleb128 0x34
        .byte   0
        .uleb128 0x3
        .uleb128 0x8
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x2
        .uleb128 0x18
        .byte   0
        .byte   0
        .uleb128 0xc
        .uleb128 0x5
        .byte   0
        .uleb128 0x3
        .uleb128 0x8
        .uleb128 0x3a
        .uleb128 0xb
        .uleb128 0x3b
        .uleb128 0xb
        .uleb128 0x39
        .uleb128 0xb
        .uleb128 0x49
        .uleb128 0x13
        .uleb128 0x2
        .uleb128 0x18
        .byte   0
        .byte   0
        .byte   0
        .section        .debug_aranges,"",@progbits
        .long   0x2c
        .value  0x2
        .long   .Ldebug_info0
        .byte   0x8
        .byte   0
        .value  0
        .value  0
        .quad   .Ltext0
        .quad   .Letext0-.Ltext0
        .quad   0
        .quad   0
        .section        .debug_line,"",@progbits
.Ldebug_line0:
        .section        .debug_str,"MS",@progbits,1
.LASF14:
        .string "scanf"
.LASF3:
        .string "unsigned int"
.LASF11:
        .string "fibonacci"
.LASF2:
        .string "long unsigned int"
.LASF12:
        .string "long long unsigned int"
.LASF9:
        .string "char"
.LASF15:
        .string "__isoc99_scanf"
.LASF4:
        .string "unsigned char"
.LASF10:
        .string "main"
.LASF8:
        .string "long int"
.LASF5:
        .string "short unsigned int"
.LASF16:
        .string "printf"
.LASF7:
        .string "short int"
.LASF13:
        .string "GNU C17 12.2.0 -masm=intel -mtune=generic -march=x86-64 -g -O0"
.LASF6:
        .string "signed char"
        .section        .debug_line_str,"MS",@progbits,1
.LASF0:
        .string "/app/example.c"
.LASF1:
        .string "/app"
        .ident  "GCC: (Compiler-Explorer-Build-gcc--binutils-2.38) 12.2.0"
        .section        .note.GNU-stack,"",@progbits
