.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$fibint$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   PUSH {LR}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #2
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ELSE0$
   MOV R4, #0
   LDR R5, [R12, R4]
   POP {R4}
   PUSH {R5}
   MOV PC, R4
   B $END0$
$ELSE0$:
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $fibint$
   POP {R4}
   POP {R12}
   PUSH {R4}
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #2
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $fibint$
   POP {R4}
   POP {R12}
   POP {R5}
   ADD R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
$END0$:
$factorialint$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   PUSH {LR}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $ELSE1$
   MOV R4, #1
   POP {R5}
   PUSH {R4}
   MOV PC, R5
   B $END1$
$ELSE1$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $factorialint$
   POP {R4}
   POP {R12}
   POP {R5}
   MUL R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
$END1$:
$main$:
   POP {R12}
   PUSH {LR}
   PUSH {R12}
   MOV R4, #5
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $fibint$
   POP {R4}
   POP {R12}
   PUSH {R4}
   PUSH {R12}
   MOV R4, #6
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $factorialint$
   POP {R4}
   POP {R12}
   POP {R5}
   ADD R6, R5, R4
   MOV R4, #0
   STR R6, [R12, R4]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   POP {PC}
$SALTOERROR$:
   B $SALTOERROR$
$printIntegerint$:
   POP {R12}
   POP {R1}
   PUSH {LR}
   LDR R0,=$int$
   BL printf
   LDR R12,=$_datatemp$
   POP {PC}
.section .data
.align 2
$_dataglobal$:
   .SPACE 0
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"