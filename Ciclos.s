.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$mensajesint$:
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
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ELSE0$
   PUSH {R12}
   MOV R4, #'N'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'E'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'G'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
   B $END0$
$ELSE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $ELSE1$
   PUSH {R12}
   MOV R4, #'U'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'N'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'O'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
   B $END1$
$ELSE1$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #2
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $ELSE2$
   PUSH {R12}
   MOV R4, #'D'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'O'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'S'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
   B $END2$
$ELSE2$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #3
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $END3$
   PUSH {R12}
   MOV R4, #'T'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'R'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'E'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'S'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
$END3$:
$END2$:
$END1$:
$END0$:
   POP {PC}
$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
$WHILE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   POP {R5}
   CMP R5, R4
   MOVGE R6, #1
   MOVLT R6, #0
   CMP R6, #0
   BEQ $ENDWHILE0$
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $mensajesint$
   POP {R12}
   MOV R4, #1
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $mensajesint$
   POP {R12}
   MOV R4, #2
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $mensajesint$
   POP {R12}
   MOV R4, #3
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $mensajesint$
   POP {R12}
   MOV R4, #1
   MOV R5, #-1
   MUL R5, R4, R5
   MOV R4, #0
   STR R5, [R12, R4]
   B $WHILE0$
$ENDWHILE0$:
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