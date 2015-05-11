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
$main$:
   POP {R12}
   PUSH {LR}
   PUSH {R12}
   MOV R4, #8
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $fibint$
   POP {R4}
   POP {R12}
   MOV R5, #0
   STR R4, [R12, R5]
   MOV R0, R4
   POP {PC}
$SALTOERROR$:
   B $SALTOERROR$
.section .data
.align 2
$_dataglobal$:
   .SPACE 0
$_datatemp$:
   .SPACE 1024
