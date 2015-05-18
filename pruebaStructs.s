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
   MOV R4, #4
   MOV R5, #4
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #348
   MUL R6, R6, R5
   ADD R5, R6, #8
   MOV R6, #2
   CMP R6, #5
   MOVLT R7, #1
   MOVGE R7, #0
   CMP R7, #0
   BEQ $SALTOERROR$
   MOV R7, #64
   MUL R7, R7, R6
   ADD R6, R7, #24
   MOV R7, #2
   CMP R7, #7
   MOVLT R8, #1
   MOVGE R8, #0
   CMP R8, #0
   BEQ $SALTOERROR$
   MOV R8, #8
   MUL R8, R8, R7
   ADD R7, R8, #8
   MOV R8, #4
   ADD R9, R7, R8
   ADD R7, R6, R9
   ADD R6, R5, R7
   STR R4, [R12, R6]
   MOV R4, #4
   CMP R4, #5
   MOVLT R5, #1
   MOVGE R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #348
   MUL R5, R5, R4
   ADD R4, R5, #8
   MOV R5, #2
   CMP R5, #5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #64
   MUL R6, R6, R5
   ADD R5, R6, #24
   MOV R6, #3
   CMP R6, #7
   MOVLT R7, #1
   MOVGE R7, #0
   CMP R7, #0
   BEQ $SALTOERROR$
   MOV R7, #8
   MUL R7, R7, R6
   ADD R6, R7, #8
   MOV R7, #4
   ADD R8, R6, R7
   ADD R6, R5, R8
   ADD R5, R4, R6
   LDR R4, [R12, R5]
   MOV R5, #4
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #1748
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
   .SPACE 4
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"