/* Starter code that prompts user for two numbers and reads them into memory locations n and m 
   compile with gcc -o get_two get_two.s
*/
        .data
str0:   .asciz "Enter a number: "
str1:   .asciz  "%d"
str2:   .asciz  "You entered %d\n"
strx:   .asciz  "%x"
        .align  2
n:      .word   0
m:      .word   0

        .text
        .globl main
main:   stmfd   sp!, {lr}

        ldr     r0, =str0
        bl      printf

        ldr     r0, =str1
        ldr     r1, =n
        bl      scanf

        ldr     r0, =str2
        ldr     r1, =n
        ldr     r1, [r1]
        bl      printf

        ldr     r0, =str0
        bl      printf

        ldr     r0, =str1
        ldr     r1, =m
        bl      scanf


        ldr     r0, =str2
        ldr     r1, =m
        ldr     r1, [r1]
        bl      printf


        ldmfd   sp!, {lr}
        mov     r0, #0
        mov     pc, lr
        .end
