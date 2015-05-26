.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$ackintint$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   POP {R10}
   STR R10, [R12, #4]
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
   BEQ $ELSE0$
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   POP {R4}
   PUSH {R6}
   MOV PC, R4
   B $END0$
$ELSE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVGT R6, #1
   MOVLE R6, #0
   PUSH {R6}
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   POP {R4}
   AND R5, R4, R6
   CMP R5, #0
   BEQ $ELSE1$
   PUSH {R12}
   MOV R4, #1
   PUSH {R4}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R12, R12, #12
   PUSH {R12}
   BL $ackintint$
   POP {R4}
   POP {R12}
   POP {R5}
   PUSH {R4}
   MOV PC, R5
   B $END1$
$ELSE1$:
   PUSH {R12}
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #12
   PUSH {R12}
   BL $ackintint$
   POP {R4}
   POP {R12}
   MOV R5, #8
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #8
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   SUB R6, R5, R4
   PUSH {R6}
   ADD R12, R12, #12
   PUSH {R12}
   BL $ackintint$
   POP {R4}
   POP {R12}
   POP {R5}
   PUSH {R4}
   MOV PC, R5
$END1$:
$END0$:
$main$:
   POP {R12}
   PUSH {LR}
   PUSH {R12}
   MOV R4, #'m'
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #':'
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   MOV R4, #4
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #'n'
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #':'
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #12
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   MOV R4, #1
   MOV R5, #4
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #4
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #12
   PUSH {R12}
   BL $ackintint$
   POP {R4}
   POP {R12}
   MOV R5, #8
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #8
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #12
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
   .SPACE 0
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