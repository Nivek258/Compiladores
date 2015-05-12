.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$sumaintint$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   POP {R10}
   STR R10, [R12, #4]
   PUSH {LR}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R12, R4]
   POP {R4}
   ADD R6, R4, R5
   POP {R4}
   PUSH {R6}
   MOV PC, R4
$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #1
   MOV R5, #0
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R12, R5]
   MOV R4, #2
   MOV R5, #1
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R12, R5]
   MOV R4, #3
   MOV R5, #2
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R12, R5]
   MOV R4, #4
   MOV R5, #3
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R12, R5]
   MOV R4, #2
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R12, R4]
   MOV R4, #16
   STR R5, [R12, R4]
   MOV R4, #3
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R12, R4]
   MOV R4, #24
   STR R5, [R12, R4]
   PUSH {R12}
   MOV R4, #24
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #16
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #28
   PUSH {R12}
   BL $sumaintint$
   POP {R4}
   POP {R12}
   MOV R5, #20
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #20
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #28
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