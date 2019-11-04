	.arch armv6
	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"upper.c"
@ GNU C17 (Raspbian 8.3.0-6+rpi1) version 8.3.0 (arm-linux-gnueabihf)
@	compiled by GNU C version 8.3.0, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.20-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -imultilib . -imultiarch arm-linux-gnueabihf upper.c
@ -mfloat-abi=hard -mfpu=vfp -mtls-dialect=gnu -marm -march=armv6+fp
@ -auxbase-strip upper.s -g -O3 -fverbose-asm
@ options enabled:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fauto-inc-dec -fbranch-count-reg
@ -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
@ -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
@ -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
@ -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop
@ -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
@ -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
@ -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
@ -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -floop-interchange
@ -floop-unroll-and-jam -flra-remat -flto-odr-type-merging -fmath-errno
@ -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
@ -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
@ -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
@ -fpredictive-commoning -fprefetch-loop-arrays -freg-struct-return
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
@ -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
@ -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
@ -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
@ -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
@ -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
@ -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
@ -fvar-tracking -fvar-tracking-assignments -fverbose-asm
@ -fzero-initialized-in-bss -marm -mbe32 -mglibc -mlittle-endian
@ -mpic-data-is-text-relative -msched-prolog -munaligned-access
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	mytoupper
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	mytoupper, %function
mytoupper:
.LFB11:
	.file 1 "upper.c"
	.loc 1 4 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
.LVL0:
	.loc 1 5 2 view .LVU1
	.loc 1 7 2 view .LVU2
	.loc 1 9 3 view .LVU3
	.loc 1 12 4 view .LVU4
@ upper.c:9: 		cur = *instr;
	.loc 1 9 7 is_stmt 0 view .LVU5
	ldrb	r3, [r0], #1	@ zero_extendqisi2	@ cur, MEM[base: _2, offset: 0B]
.LVL1:
	.loc 1 10 3 is_stmt 1 view .LVU6
	.loc 1 14 3 view .LVU7
	.loc 1 14 3 view .LVU8
	add	r1, r1, #1	@ outstr, outstr,
.LVL2:
@ upper.c:10: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 10 6 is_stmt 0 view .LVU9
	sub	r2, r3, #97	@ tmp120, cur,
	cmp	r2, #25	@ tmp120,
@ upper.c:12: 			cur = cur - ('a'-'A');
	.loc 1 12 8 view .LVU10
	sub	r2, r3, #32	@ tmp121, cur,
@ upper.c:14: 		*outstr++ = cur;
	.loc 1 14 13 view .LVU11
	strbls	r2, [r1, #-1]	@ tmp121, MEM[base: _17, offset: 4294967295B]
@ upper.c:10: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 10 6 view .LVU12
	bls	.L2		@,
@ upper.c:16: 	} while (cur != '\0');
	.loc 1 16 2 view .LVU13
	cmp	r3, #0	@ cur,
@ upper.c:14: 		*outstr++ = cur;
	.loc 1 14 13 view .LVU14
	strb	r3, [r1, #-1]	@ cur, MEM[base: _17, offset: 4294967295B]
	.loc 1 15 3 is_stmt 1 view .LVU15
.LVL3:
@ upper.c:16: 	} while (cur != '\0');
	.loc 1 16 2 is_stmt 0 view .LVU16
	bne	.L2		@,
	.loc 1 17 2 is_stmt 1 view .LVU17
@ upper.c:18: }
	.loc 1 18 1 is_stmt 0 view .LVU18
	sub	r0, r1, r0	@, outstr, ivtmp.9
	bx	lr	@
	.cfi_endproc
.LFE11:
	.size	mytoupper, .-mytoupper
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LFB12:
	.loc 1 26 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 27 2 view .LVU20
	ldr	r2, .L11	@ tmp117,
	ldr	r3, .L11+4	@ outstr,
@ upper.c:26: {
	.loc 1 26 1 is_stmt 0 view .LVU21
	push	{r4, lr}	@
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
@ upper.c:27: 	mytoupper(tstStr, outStr);
	.loc 1 27 2 view .LVU22
	ldr	r1, [r2]	@ tstStr.1_1, tstStr
.LVL4:
.LBB4:
.LBI4:
	.loc 1 3 5 is_stmt 1 view .LVU23
.LBE4:
@ upper.c:27: 	mytoupper(tstStr, outStr);
	.loc 1 27 2 is_stmt 0 view .LVU24
	mov	r2, r1	@ instr, tstStr.1_1
.LVL5:
.L7:
.LBB6:
.LBB5:
	.loc 1 5 2 is_stmt 1 view .LVU25
	.loc 1 7 2 view .LVU26
	.loc 1 9 3 view .LVU27
	.loc 1 12 4 view .LVU28
@ upper.c:9: 		cur = *instr;
	.loc 1 9 7 is_stmt 0 view .LVU29
	ldrb	r4, [r2], #1	@ zero_extendqisi2	@ cur, MEM[base: instr_4, offset: 0B]
.LVL6:
	.loc 1 10 3 is_stmt 1 view .LVU30
	.loc 1 14 3 view .LVU31
	.loc 1 14 3 view .LVU32
	add	r3, r3, #1	@ outstr, outstr,
.LVL7:
@ upper.c:10: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 10 6 is_stmt 0 view .LVU33
	sub	r0, r4, #97	@ tmp119, cur,
	cmp	r0, #25	@ tmp119,
@ upper.c:12: 			cur = cur - ('a'-'A');
	.loc 1 12 8 view .LVU34
	sub	r0, r4, #32	@ tmp120, cur,
@ upper.c:14: 		*outstr++ = cur;
	.loc 1 14 13 view .LVU35
	strbls	r0, [r3, #-1]	@ tmp120, MEM[base: _14, offset: 4294967295B]
@ upper.c:10: 		if ((cur >= 'a') && (cur <='z')) 
	.loc 1 10 6 view .LVU36
	bls	.L7		@,
@ upper.c:16: 	} while (cur != '\0');
	.loc 1 16 2 view .LVU37
	cmp	r4, #0	@ cur,
@ upper.c:14: 		*outstr++ = cur;
	.loc 1 14 13 view .LVU38
	strb	r4, [r3, #-1]	@ cur, MEM[base: _14, offset: 4294967295B]
	.loc 1 15 3 is_stmt 1 view .LVU39
.LVL8:
@ upper.c:16: 	} while (cur != '\0');
	.loc 1 16 2 is_stmt 0 view .LVU40
	bne	.L7		@,
	.loc 1 17 2 is_stmt 1 view .LVU41
.LVL9:
	.loc 1 17 2 is_stmt 0 view .LVU42
.LBE5:
.LBE6:
	.loc 1 28 2 is_stmt 1 view .LVU43
	ldr	r2, .L11+4	@,
	ldr	r0, .L11+8	@,
	bl	printf		@
.LVL10:
	.loc 1 30 2 view .LVU44
@ upper.c:31: }
	.loc 1 31 1 is_stmt 0 view .LVU45
	mov	r0, r4	@, cur
	pop	{r4, pc}	@
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	outStr
	.word	.LC0
	.cfi_endproc
.LFE12:
	.size	main, .-main
	.comm	outStr,250,4
	.global	tstStr
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	tstStr, %object
	.size	tstStr, 4
tstStr:
	.word	.LC1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Input: %s\012Output: %s\012\000"
	.space	2
.LC1:
	.ascii	"This is a test!\000"
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/8/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/arm-linux-gnueabihf/bits/types/struct_FILE.h"
	.file 5 "/usr/include/arm-linux-gnueabihf/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x421
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0xc
	.4byte	.LASF57
	.4byte	.LASF58
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd8
	.byte	0x17
	.4byte	0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x41
	.byte	0x25
	.4byte	0x64
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x96
	.byte	0x19
	.4byte	0x8a
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x97
	.byte	0x1b
	.4byte	0x72
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	0xa3
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x98
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.4byte	0x236
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.4byte	0x5d
	.byte	0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.4byte	0x9d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.4byte	0x9d
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.4byte	0x9d
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.4byte	0x9d
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.4byte	0x9d
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.4byte	0x9d
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0x9d
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.4byte	0x9d
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.4byte	0x9d
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.4byte	0x9d
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.4byte	0x9d
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.4byte	0x24f
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.4byte	0x255
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.4byte	0x5d
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.4byte	0x5d
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.4byte	0x7e
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.4byte	0x41
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.4byte	0x4f
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x25b
	.byte	0x47
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.4byte	0x26b
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.4byte	0x91
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.4byte	0x276
	.byte	0x58
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.4byte	0x281
	.byte	0x5c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.4byte	0x255
	.byte	0x60
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.4byte	0x38
	.byte	0x64
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.4byte	0x25
	.byte	0x68
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.4byte	0x5d
	.byte	0x6c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x287
	.byte	0x70
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.4byte	0xaf
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xb
	.4byte	.LASF44
	.uleb128 0x6
	.byte	0x4
	.4byte	0x24a
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf
	.uleb128 0xc
	.4byte	0xa3
	.4byte	0x26b
	.uleb128 0xd
	.4byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x242
	.uleb128 0xb
	.4byte	.LASF45
	.uleb128 0x6
	.byte	0x4
	.4byte	0x271
	.uleb128 0xb
	.4byte	.LASF46
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27c
	.uleb128 0xc
	.4byte	0xa3
	.4byte	0x297
	.uleb128 0xd
	.4byte	0x31
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0x6
	.byte	0x4
	.4byte	0x236
	.uleb128 0xe
	.4byte	.LASF48
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.4byte	0x2a3
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.4byte	0x5d
	.uleb128 0xc
	.4byte	0x2e3
	.4byte	0x2d8
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x2cd
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaa
	.uleb128 0x7
	.4byte	0x2dd
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.4byte	0x2d8
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x16
	.byte	0x7
	.4byte	0x9d
	.uleb128 0x5
	.byte	0x3
	.4byte	tstStr
	.uleb128 0xc
	.4byte	0xa3
	.4byte	0x316
	.uleb128 0xd
	.4byte	0x31
	.byte	0xf9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.4byte	0x306
	.uleb128 0x5
	.byte	0x3
	.4byte	outStr
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a6
	.uleb128 0x12
	.4byte	0x3a6
	.4byte	.LBI4
	.byte	.LVU23
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.4byte	0x389
	.uleb128 0x13
	.4byte	0x3c3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x13
	.4byte	0x3b7
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x14
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x15
	.4byte	0x3cf
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0x417
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	outStr
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.4byte	0x5d
	.byte	0x1
	.4byte	0x3dc
	.uleb128 0x19
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3
	.byte	0x15
	.4byte	0x9d
	.uleb128 0x19
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3
	.byte	0x22
	.4byte	0x9d
	.uleb128 0x1a
	.ascii	"cur\000"
	.byte	0x1
	.byte	0x5
	.byte	0x7
	.4byte	0xa3
	.byte	0
	.uleb128 0x1b
	.4byte	0x3a6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x417
	.uleb128 0x13
	.4byte	0x3b7
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x13
	.4byte	0x3c3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	0x3cf
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x14c
	.byte	0xc
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS3:
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU42
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x3
	.4byte	outStr
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU42
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x74
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU1
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE11
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU1
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE11
	.2byte	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL1
	.2byte	0x3
	.byte	0x73
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF22:
	.ascii	"_IO_buf_end\000"
.LASF9:
	.ascii	"__quad_t\000"
.LASF30:
	.ascii	"_old_offset\000"
.LASF50:
	.ascii	"sys_nerr\000"
.LASF25:
	.ascii	"_IO_save_end\000"
.LASF5:
	.ascii	"short int\000"
.LASF8:
	.ascii	"size_t\000"
.LASF35:
	.ascii	"_offset\000"
.LASF19:
	.ascii	"_IO_write_ptr\000"
.LASF14:
	.ascii	"_flags\000"
.LASF21:
	.ascii	"_IO_buf_base\000"
.LASF26:
	.ascii	"_markers\000"
.LASF16:
	.ascii	"_IO_read_end\000"
.LASF39:
	.ascii	"_freeres_buf\000"
.LASF55:
	.ascii	"outstr\000"
.LASF62:
	.ascii	"mytoupper\000"
.LASF49:
	.ascii	"stderr\000"
.LASF6:
	.ascii	"long long int\000"
.LASF56:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g -O3\000"
.LASF52:
	.ascii	"tstStr\000"
.LASF34:
	.ascii	"_lock\000"
.LASF11:
	.ascii	"long int\000"
.LASF63:
	.ascii	"printf\000"
.LASF31:
	.ascii	"_cur_column\000"
.LASF59:
	.ascii	"_IO_FILE\000"
.LASF54:
	.ascii	"instr\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF4:
	.ascii	"signed char\000"
.LASF36:
	.ascii	"_codecvt\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF44:
	.ascii	"_IO_marker\000"
.LASF33:
	.ascii	"_shortbuf\000"
.LASF58:
	.ascii	"/home/pi/asm/Chapter 14\000"
.LASF18:
	.ascii	"_IO_write_base\000"
.LASF42:
	.ascii	"_unused2\000"
.LASF15:
	.ascii	"_IO_read_ptr\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"char\000"
.LASF61:
	.ascii	"main\000"
.LASF57:
	.ascii	"upper.c\000"
.LASF37:
	.ascii	"_wide_data\000"
.LASF38:
	.ascii	"_freeres_list\000"
.LASF40:
	.ascii	"__pad5\000"
.LASF45:
	.ascii	"_IO_codecvt\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF20:
	.ascii	"_IO_write_end\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF27:
	.ascii	"_chain\000"
.LASF46:
	.ascii	"_IO_wide_data\000"
.LASF24:
	.ascii	"_IO_backup_base\000"
.LASF47:
	.ascii	"stdin\000"
.LASF29:
	.ascii	"_flags2\000"
.LASF41:
	.ascii	"_mode\000"
.LASF17:
	.ascii	"_IO_read_base\000"
.LASF32:
	.ascii	"_vtable_offset\000"
.LASF23:
	.ascii	"_IO_save_base\000"
.LASF51:
	.ascii	"sys_errlist\000"
.LASF28:
	.ascii	"_fileno\000"
.LASF43:
	.ascii	"FILE\000"
.LASF53:
	.ascii	"outStr\000"
.LASF48:
	.ascii	"stdout\000"
.LASF60:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
