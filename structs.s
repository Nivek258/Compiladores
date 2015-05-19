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
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #188
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
$printCharchar$:
   POP {R12}
   POP {R1}
   PUSH {LR}
   LDR R0,=$char$
   BL printf
   LDR R12,=$_datatemp$
   POP {PC}
$printVacio$:
   POP {R12}
   PUSH {LR}
   LDR R0,=$vacio$
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
$char$:
   .asciz "%c"
$vacio$:
   .asciz " "
$indexoutofbounds$:
   .ascii "IndexOutOfBoundsException\n"