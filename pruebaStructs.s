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
   MOV R4, #0
   MOV R5, #4
   STR R4, [R12, R5]
   MOV R4, #2
   MOV R5, #0
   STR R4, [R12, R5]
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #5
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $END2$
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #8
   PUSH {R12}
   BL $fibint$
   POP {R4}
   POP {R12}
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #8
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
$END2$:
$WHILE0$:
   MOV R4, #4
   LDR R5, [R12, R4]
   CMP R5, #1
   MOVEQ R5, #0
   MOVNE R5, #1
   MOV R4, R5
   CMP R4, #0
   BEQ $ENDWHILE0$
   MOV R4, #0
   MOV R5, #0
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   MOV R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #1
   MOV R5, #1
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   MOV R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #2
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   MOV R6, #0
   CMP R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #3
   MOV R5, #3
   CMP R5, #4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   MOV R6, #0
   BEQ $SALTOERROR$
   MOV R6, #4
   MUL R6, R6, R5
   ADD R5, R6, #0
   STR R4, [R11, R5]
   MOV R4, #2
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   MOV R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R11, R4]
   MOV R4, #8
   STR R5, [R12, R4]
   MOV R4, #3
   CMP R4, #4
   MOVLT R5, #1
   MOVGE R5, #0
   MOV R5, #0
   CMP R5, #0
   BEQ $SALTOERROR$
   MOV R5, #4
   MUL R5, R5, R4
   ADD R4, R5, #0
   LDR R5, [R11, R4]
   MOV R4, #12
   STR R5, [R12, R4]
   PUSH {R12}
   MOV R4, #12
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #8
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #16
   PUSH {R12}
   BL $sumaintint$
   POP {R4}
   POP {R12}
   MOV R5, #12
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #12
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #16
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   MOV R4, #1
   MOV R5, #4
   STR R4, [R12, R5]
   B $WHILE0$
$ENDWHILE0$:
   POP {PC}
$SALTOERROR$:
   LDR R0 , =$holi$
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
   .SPACE 16
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"
$holi$:
   .ascii "outofbounds"