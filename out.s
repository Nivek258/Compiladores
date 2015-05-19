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
   PUSH {R12}
   MOV R4, #7
   PUSH {R4}
   MOV R4, #3
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $sumaintint$
   POP {R4}
   POP {R12}
   MOV R5, #0
   STR R4, [R12, R5]
   MOV R4, #0
   LDR R5, [R12, R4]
   MOV R4, #5
   CMP R4, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R4
   ADD R4, R6, #0
   STR R5, [R11, R4]
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
   LDR R0,=$indexoutofbounds$
   BL printf
   POP {PC}
$printIntegerint$:
   POP {R12}
   POP {R1}
   PUSH {LR}
   LDR R0,=$int$
   BL printf
   LDR R12,=$_datatemp$
   POP {PC}
$division$:
   MOV R0, #0
   POP {R1}
   POP {R2}
   PUSH {LR}
$dividiendo$:
   CMP R1, R2
   BLT $finDiv$
   SUB R1, R1, R2
   ADD R0, R0, #1
   b $dividiendo$
$finDiv$:
   POP {PC}
$modulo$:
   MOV R0, #0
   POP {R1}
   POP {R2}
   PUSH {LR}
$mod$:
   CMP R1, R2
   BLT $finMod$
   SUB R1, R1, R2
   ADD R0, R0, #1
   b $mod$
$finMod$:
   POP {PC}
.section .data
.align 2
$_dataglobal$:
   .SPACE 20
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"
$indexoutofbounds$:
   .ascii "IndexOutOfBoundsException\n"