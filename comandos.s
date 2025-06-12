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
