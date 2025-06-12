/* movl %edi, %r11d
movl %edi, %r12d
movl %edi, %r13d
movl %edi, %r14d
movl %edi, %r15d

movl %esi, %r11d
movl %esi, %r12d
movl %esi, %r13d
movl %esi, %r14d
movl %esi, %r15d

movl %edx, %r11d
movl %edx, %r12d
movl %edx, %r13d
movl %edx, %r14d
movl %edx, %r15d */

/*
movl %r12d, %r11d
movl %r13d, %r11d
movl %r14d, %r11d
movl %r15d, %r11d

movl %r11d, %r12d
movl %r13d, %r12d
movl %r14d, %r12d
movl %r15d, %r12d

movl %r11d, %r13d
movl %r12d, %r13d
movl %r14d, %r13d
movl %r15d, %r13d

movl %r11d, %r14d
movl %r12d, %r14d
movl %r13d, %r14d
movl %r15d, %r14d

movl %r11d, %r15d
movl %r12d, %r15d
movl %r13d, %r15d
movl %r14d, %r15d */

/*
movl $1, %r11d
movl $1, %r12d
movl $1, %r13d
movl $1, %r14d
movl $1, %r15d*/

/*
movl %r11d, %r10d
movl %r12d, %r10d
movl %r13d, %r10d
movl %r14d, %r10d
movl %r15d, %r10d
movl $1, %r10d

addl $1, %r10d
addl %r11d, %r10d
addl %r12d, %r10d
addl %r13d, %r10d
addl %r14d, %r10d
addl %r15d, %r10d

subl $1, %r10d
subl %r11d, %r10d
subl %r12d, %r10d
subl %r13d, %r10d
subl %r14d, %r10d
subl %r15d, %r10d

imul $1, %r10d
imul %r11d, %r10d
imul %r12d, %r10d
imul %r13d, %r10d
imul %r14d, %r10d
imul %r15d, %r10d

movl %r10d, %r11d
movl %r10d, %r12d
movl %r10d, %r13d
movl %r10d, %r14d
movl %r10d, %r15d 
*/

/*
addl $1, %r11d
addl $1, %r12d
addl $1, %r13d
addl $1, %r14d
addl $1, %r15d

subl $1, %r11d
subl $1, %r12d
subl $1, %r13d
subl $1, %r14d
subl $1, %r15d

imul $1, %r11d
imul $1, %r12d
imul $1, %r13d
imul $1, %r14d
imul $1, %r15d
*/

/*
addl %r11d, %r11d
addl %r11d, %r12d
addl %r11d, %r13d
addl %r11d, %r14d
addl %r11d, %r15d

addl %r12d, %r11d
addl %r12d, %r12d
addl %r12d, %r13d
addl %r12d, %r14d
addl %r12d, %r15d

addl %r13d, %r11d
addl %r13d, %r12d
addl %r13d, %r13d
addl %r13d, %r14d
addl %r13d, %r15d

addl %r14d, %r11d
addl %r14d, %r12d
addl %r14d, %r13d
addl %r14d, %r14d
addl %r14d, %r15d

addl %r15d, %r11d
addl %r15d, %r12d
addl %r15d, %r13d
addl %r15d, %r14d
addl %r15d, %r15d */

/*
subl %r11d, %r11d
subl %r11d, %r12d
subl %r11d, %r13d
subl %r11d, %r14d
subl %r11d, %r15d

subl %r12d, %r11d
subl %r12d, %r12d
subl %r12d, %r13d
subl %r12d, %r14d
subl %r12d, %r15d

subl %r13d, %r11d
subl %r13d, %r12d
subl %r13d, %r13d
subl %r13d, %r14d
subl %r13d, %r15d

subl %r14d, %r11d
subl %r14d, %r12d
subl %r14d, %r13d
subl %r14d, %r14d
subl %r14d, %r15d

subl %r15d, %r11d
subl %r15d, %r12d
subl %r15d, %r13d
subl %r15d, %r14d
subl %r15d, %r15d */

/*
imul %r11d, %r11d
imul %r11d, %r12d
imul %r11d, %r13d
imul %r11d, %r14d
imul %r11d, %r15d

imul %r12d, %r11d
imul %r12d, %r12d
imul %r12d, %r13d
imul %r12d, %r14d
imul %r12d, %r15d

imul %r13d, %r11d
imul %r13d, %r12d
imul %r13d, %r13d
imul %r13d, %r14d
imul %r13d, %r15d

imul %r14d, %r11d
imul %r14d, %r12d
imul %r14d, %r13d
imul %r14d, %r14d
imul %r14d, %r15d

imul %r15d, %r11d
imul %r15d, %r12d
imul %r15d, %r13d
imul %r15d, %r14d
imul %r15d, %r15d */

/*
movl %eax, %r11d
movl %eax, %r12d
movl %eax, %r13d
movl %eax, %r14d
movl %eax, %r15d */

pushq %rbp
movq %rsp, %rbp
subq $16, %rsp
movq %r11, -8(%rsp)
movq %r12, -8(%rsp)
movq %r13, -8(%rsp)
movq %r14, -8(%rsp)
movq %r15, -8(%rsp)

movq -8(%rsp), %r11
movq -8(%rsp), %r12
movq -8(%rsp), %r13
movq -8(%rsp), %r14
movq -8(%rsp), %r15

/*
comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	41 89 fb             	mov    %edi,%r11d
   3:	41 89 fc             	mov    %edi,%r12d
   6:	41 89 fd             	mov    %edi,%r13d
   9:	41 89 fe             	mov    %edi,%r14d
   c:	41 89 ff             	mov    %edi,%r15d
   f:	41 89 f3             	mov    %esi,%r11d
  12:	41 89 f4             	mov    %esi,%r12d
  15:	41 89 f5             	mov    %esi,%r13d
  18:	41 89 f6             	mov    %esi,%r14d
  1b:	41 89 f7             	mov    %esi,%r15d
  1e:	41 89 d3             	mov    %edx,%r11d
  21:	41 89 d4             	mov    %edx,%r12d
  24:	41 89 d5             	mov    %edx,%r13d
  27:	41 89 d6             	mov    %edx,%r14d
  2a:	41 89 d7             	mov    %edx,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
^[[A[u2110239@anjos 10.0objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 89 e3             	mov    %r12d,%r11d
   3:	45 89 eb             	mov    %r13d,%r11d
   6:	45 89 f3             	mov    %r14d,%r11d
   9:	45 89 fb             	mov    %r15d,%r11d
   c:	45 89 dc             	mov    %r11d,%r12d
   f:	45 89 ec             	mov    %r13d,%r12d
  12:	45 89 f4             	mov    %r14d,%r12d
  15:	45 89 fc             	mov    %r15d,%r12d
  18:	45 89 dd             	mov    %r11d,%r13d
  1b:	45 89 de             	mov    %r11d,%r14d
  1e:	45 89 df             	mov    %r11d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
^[[A[u2110239@anjos 10.0objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 89 e3             	mov    %r12d,%r11d
   3:	45 89 eb             	mov    %r13d,%r11d
   6:	45 89 f3             	mov    %r14d,%r11d
   9:	45 89 fb             	mov    %r15d,%r11d
   c:	45 89 dc             	mov    %r11d,%r12d
   f:	45 89 ec             	mov    %r13d,%r12d
  12:	45 89 f4             	mov    %r14d,%r12d
  15:	45 89 fc             	mov    %r15d,%r12d
  18:	45 89 dd             	mov    %r11d,%r13d
  1b:	45 89 e5             	mov    %r12d,%r13d
  1e:	45 89 f5             	mov    %r14d,%r13d
  21:	45 89 fd             	mov    %r15d,%r13d
  24:	45 89 de             	mov    %r11d,%r14d
  27:	45 89 e6             	mov    %r12d,%r14d
  2a:	45 89 ee             	mov    %r13d,%r14d
  2d:	45 89 fe             	mov    %r15d,%r14d
  30:	45 89 df             	mov    %r11d,%r15d
  33:	45 89 e7             	mov    %r12d,%r15d
  36:	45 89 ef             	mov    %r13d,%r15d
  39:	45 89 f7             	mov    %r14d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	41 bb 01 00 00 00    	mov    $0x1,%r11d
   6:	41 bc 01 00 00 00    	mov    $0x1,%r12d
   c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
  12:	41 be 01 00 00 00    	mov    $0x1,%r14d
  18:	41 bf 01 00 00 00    	mov    $0x1,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 89 da             	mov    %r11d,%r10d
   3:	45 89 e2             	mov    %r12d,%r10d
   6:	45 89 ea             	mov    %r13d,%r10d
   9:	45 89 f2             	mov    %r14d,%r10d
   c:	45 89 fa             	mov    %r15d,%r10d
   f:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  15:	41 83 c2 01          	add    $0x1,%r10d
  19:	45 01 da             	add    %r11d,%r10d
  1c:	45 01 e2             	add    %r12d,%r10d
  1f:	45 01 ea             	add    %r13d,%r10d
  22:	45 01 f2             	add    %r14d,%r10d
  25:	45 01 fa             	add    %r15d,%r10d
  28:	41 83 ea 01          	sub    $0x1,%r10d
  2c:	45 29 da             	sub    %r11d,%r10d
  2f:	45 29 e2             	sub    %r12d,%r10d
  32:	45 29 ea             	sub    %r13d,%r10d
  35:	45 29 f2             	sub    %r14d,%r10d
  38:	45 29 fa             	sub    %r15d,%r10d
  3b:	45 6b d2 01          	imul   $0x1,%r10d,%r10d
  3f:	45 0f af d3          	imul   %r11d,%r10d
  43:	45 0f af d4          	imul   %r12d,%r10d
  47:	45 0f af d5          	imul   %r13d,%r10d
  4b:	45 0f af d6          	imul   %r14d,%r10d
  4f:	45 0f af d7          	imul   %r15d,%r10d
  53:	45 89 d3             	mov    %r10d,%r11d
  56:	45 89 d4             	mov    %r10d,%r12d
  59:	45 89 d5             	mov    %r10d,%r13d
  5c:	45 89 d6             	mov    %r10d,%r14d
  5f:	45 89 d7             	mov    %r10d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
comandos.s: Assembler messages:
comandos.s:52: Error: junk at end of line, first unrecognized character is `*'
comandos.s:85: Error: junk `*/' after register
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	41 83 c3 01          	add    $0x1,%r11d
   4:	41 83 c4 01          	add    $0x1,%r12d
   8:	41 83 c5 01          	add    $0x1,%r13d
   c:	41 83 c6 01          	add    $0x1,%r14d
  10:	41 83 c7 01          	add    $0x1,%r15d
  14:	41 83 eb 01          	sub    $0x1,%r11d
  18:	41 83 ec 01          	sub    $0x1,%r12d
  1c:	41 83 ed 01          	sub    $0x1,%r13d
  20:	41 83 ee 01          	sub    $0x1,%r14d
  24:	41 83 ef 01          	sub    $0x1,%r15d
  28:	45 6b db 01          	imul   $0x1,%r11d,%r11d
  2c:	45 6b e4 01          	imul   $0x1,%r12d,%r12d
  30:	45 6b ed 01          	imul   $0x1,%r13d,%r13d
  34:	45 6b f6 01          	imul   $0x1,%r14d,%r14d
  38:	45 6b ff 01          	imul   $0x1,%r15d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 01 e3             	add    %r12d,%r11d
   3:	45 01 eb             	add    %r13d,%r11d
   6:	45 01 f3             	add    %r14d,%r11d
   9:	45 01 fb             	add    %r15d,%r11d
   c:	45 29 e3             	sub    %r12d,%r11d
   f:	45 29 eb             	sub    %r13d,%r11d
  12:	45 29 f3             	sub    %r14d,%r11d
  15:	45 29 fb             	sub    %r15d,%r11d
  18:	45 0f af dc          	imul   %r12d,%r11d
  1c:	45 0f af dd          	imul   %r13d,%r11d
  20:	45 0f af de          	imul   %r14d,%r11d
  24:	45 0f af df          	imul   %r15d,%r11d
[u2110239@anjos 10.06]$ gcc -c comandos.s
^[[A[u2110239@anjos 10.0objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 01 db             	add    %r11d,%r11d
   3:	45 01 e3             	add    %r12d,%r11d
   6:	45 01 eb             	add    %r13d,%r11d
   9:	45 01 f3             	add    %r14d,%r11d
   c:	45 01 fb             	add    %r15d,%r11d
   f:	45 01 dc             	add    %r11d,%r12d
  12:	45 01 e4             	add    %r12d,%r12d
  15:	45 01 ec             	add    %r13d,%r12d
  18:	45 01 f4             	add    %r14d,%r12d
  1b:	45 01 fc             	add    %r15d,%r12d
  1e:	45 01 dd             	add    %r11d,%r13d
  21:	45 01 e5             	add    %r12d,%r13d
  24:	45 01 ed             	add    %r13d,%r13d
  27:	45 01 f5             	add    %r14d,%r13d
  2a:	45 01 fd             	add    %r15d,%r13d
  2d:	45 01 de             	add    %r11d,%r14d
  30:	45 01 e6             	add    %r12d,%r14d
  33:	45 01 ee             	add    %r13d,%r14d
  36:	45 01 f6             	add    %r14d,%r14d
  39:	45 01 fe             	add    %r15d,%r14d
  3c:	45 01 df             	add    %r11d,%r15d
  3f:	45 01 e7             	add    %r12d,%r15d
  42:	45 01 ef             	add    %r13d,%r15d
  45:	45 01 f7             	add    %r14d,%r15d
  48:	45 01 ff             	add    %r15d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 01 db             	add    %r11d,%r11d
   3:	45 01 dc             	add    %r11d,%r12d
   6:	45 01 dd             	add    %r11d,%r13d
   9:	45 01 de             	add    %r11d,%r14d
   c:	45 01 df             	add    %r11d,%r15d
   f:	45 01 e3             	add    %r12d,%r11d
  12:	45 01 e4             	add    %r12d,%r12d
  15:	45 01 e5             	add    %r12d,%r13d
  18:	45 01 e6             	add    %r12d,%r14d
  1b:	45 01 e7             	add    %r12d,%r15d
  1e:	45 01 eb             	add    %r13d,%r11d
  21:	45 01 ec             	add    %r13d,%r12d
  24:	45 01 ed             	add    %r13d,%r13d
  27:	45 01 ee             	add    %r13d,%r14d
  2a:	45 01 ef             	add    %r13d,%r15d
  2d:	45 01 f3             	add    %r14d,%r11d
  30:	45 01 f4             	add    %r14d,%r12d
  33:	45 01 f5             	add    %r14d,%r13d
  36:	45 01 f6             	add    %r14d,%r14d
  39:	45 01 f7             	add    %r14d,%r15d
  3c:	45 01 fb             	add    %r15d,%r11d
  3f:	45 01 fc             	add    %r15d,%r12d
  42:	45 01 fd             	add    %r15d,%r13d
  45:	45 01 fe             	add    %r15d,%r14d
  48:	45 01 ff             	add    %r15d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 29 db             	sub    %r11d,%r11d
   3:	45 29 dc             	sub    %r11d,%r12d
   6:	45 29 dd             	sub    %r11d,%r13d
   9:	45 29 de             	sub    %r11d,%r14d
   c:	45 29 df             	sub    %r11d,%r15d
   f:	45 29 e3             	sub    %r12d,%r11d
  12:	45 29 e4             	sub    %r12d,%r12d
  15:	45 29 e5             	sub    %r12d,%r13d
  18:	45 29 e6             	sub    %r12d,%r14d
  1b:	45 29 e7             	sub    %r12d,%r15d
  1e:	45 29 eb             	sub    %r13d,%r11d
  21:	45 29 ec             	sub    %r13d,%r12d
  24:	45 29 ed             	sub    %r13d,%r13d
  27:	45 29 ee             	sub    %r13d,%r14d
  2a:	45 29 ef             	sub    %r13d,%r15d
  2d:	45 29 f3             	sub    %r14d,%r11d
  30:	45 29 f4             	sub    %r14d,%r12d
  33:	45 29 f5             	sub    %r14d,%r13d
  36:	45 29 f6             	sub    %r14d,%r14d
  39:	45 29 f7             	sub    %r14d,%r15d
  3c:	45 29 fb             	sub    %r15d,%r11d
  3f:	45 29 fc             	sub    %r15d,%r12d
  42:	45 29 fd             	sub    %r15d,%r13d
  45:	45 29 fe             	sub    %r15d,%r14d
  48:	45 29 ff             	sub    %r15d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	45 0f af db          	imul   %r11d,%r11d
   4:	45 0f af e3          	imul   %r11d,%r12d
   8:	45 0f af eb          	imul   %r11d,%r13d
   c:	45 0f af f3          	imul   %r11d,%r14d
  10:	45 0f af fb          	imul   %r11d,%r15d
  14:	45 0f af dc          	imul   %r12d,%r11d
  18:	45 0f af e4          	imul   %r12d,%r12d
  1c:	45 0f af ec          	imul   %r12d,%r13d
  20:	45 0f af f4          	imul   %r12d,%r14d
  24:	45 0f af fc          	imul   %r12d,%r15d
  28:	45 0f af dd          	imul   %r13d,%r11d
  2c:	45 0f af e5          	imul   %r13d,%r12d
  30:	45 0f af ed          	imul   %r13d,%r13d
  34:	45 0f af f5          	imul   %r13d,%r14d
  38:	45 0f af fd          	imul   %r13d,%r15d
  3c:	45 0f af de          	imul   %r14d,%r11d
  40:	45 0f af e6          	imul   %r14d,%r12d
  44:	45 0f af ee          	imul   %r14d,%r13d
  48:	45 0f af f6          	imul   %r14d,%r14d
  4c:	45 0f af fe          	imul   %r14d,%r15d
  50:	45 0f af df          	imul   %r15d,%r11d
  54:	45 0f af e7          	imul   %r15d,%r12d
  58:	45 0f af ef          	imul   %r15d,%r13d
  5c:	45 0f af f7          	imul   %r15d,%r14d
  60:	45 0f af ff          	imul   %r15d,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
comandos.s: Assembler messages:
comandos.s: Warning: end of file in comment
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	41 89 c3             	mov    %eax,%r11d
   3:	41 89 c4             	mov    %eax,%r12d
   6:	41 89 c5             	mov    %eax,%r13d
   9:	41 89 c6             	mov    %eax,%r14d
   c:	41 89 c7             	mov    %eax,%r15d
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	4c 89 5c 24 f8       	mov    %r11,-0x8(%rsp)
   d:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  12:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
  17:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  1c:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	4c 89 5c 24 f0       	mov    %r11,-0x10(%rsp)
   d:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  12:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  17:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  1c:	4c 89 7c 24 f0       	mov    %r15,-0x10(%rsp)
[u2110239@anjos 10.06]$ gcc -c comandos.s
[u2110239@anjos 10.06]$ objdump -d comandos.o

comandos.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 20          	sub    $0x20,%rsp
[u2110239@anjos 10.06]$ 

*/