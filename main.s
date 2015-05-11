.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$borrar$:
   POP {R12}
   PUSH {LR}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R12, R5]
   POP {PC}
$sumaintint$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   POP {R10}
   STR R10, [R12, #4]
   PUSH {LR}
   MOV R4, #5
   MOV R5, #8
   STR R4, [R12, R5]
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
   PUSH {R12}
   MOV R4, #2
   PUSH {R4}
   MOV R4, #5
   PUSH {R4}
   ADD R12, R12, #8
   PUSH {R12}
   BL $sumaintint$
   POP {R4}
   POP {R12}
   MOV R5, #4
   STR R4, [R12, R5]
   MOV R4, #4
   LDR R5, [R12, R4]
   MOV R4, #-1
   MUL R4, R5, R4
   MOV R5, #0
   STR R4, [R12, R5]
   MOV R0, R4
   POP {PC}
$SALTOERROR$:
   B $SALTOERROR$
.section .data
.align 2
$_dataglobal$:
   .SPACE 4
$_datatemp$:
   .SPACE 1024
