.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #7
   MOV R5, #4
   STR R4, [R12, R5]
   MOV R4, #4
   MOV R5, #4
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #36
   MUL R6, R6, R5
   ADD R5, R6, #8
   MOV R6, #4
   ADD R7, R6, #24
   ADD R6, R5, R7
   STR R4, [R12, R6]
   MOV R4, #4
   CMP R4, #5
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #36
   MUL R5, R5, R4
   ADD R4, R5, #8
   MOV R5, #4
   ADD R6, R5, #24
   ADD R5, R4, R6
   LDR R4, [R12, R5]
   MOV R5, #0
   STR R4, [R12, R5]
   POP {PC}
$SALTOERROR$:
   B $SALTOERROR$
.section .data
.align 2
$_dataglobal$:
   .SPACE 4
$_datatemp$:
   .SPACE 1024
