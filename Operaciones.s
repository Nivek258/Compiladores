.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$operacionint$:
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
   BEQ $END0$
   PUSH {R12}
   MOV R4, #'S'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'U'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'M'
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
$END0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $END1$
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
$END1$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #2
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $END2$
   PUSH {R12}
   MOV R4, #'M'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'U'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'L'
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
$END2$:
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
   MOV R4, #'D'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'I'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'V'
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
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #4
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $END4$
   PUSH {R12}
   MOV R4, #'M'
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
   MOV R4, #'D'
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
$END4$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #5
   POP {R5}
   CMP R5, R4
   MOVEQ R6, #1
   MOVNE R6, #0
   CMP R6, #0
   BEQ $END5$
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
$END5$:
   POP {PC}
$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
   MOV R4, #10
   MOV R5, #0
   STR R4, [R11, R5]
$WHILE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #0
   LDR R5, [R11, R4]
   POP {R4}
   CMP R4, R5
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ENDWHILE0$
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   MOV R4, #0
   STR R6, [R12, R4]
   B $WHILE0$
$ENDWHILE0$:
   PUSH {R12}
   MOV R4, #0
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #4
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R11, R4]
   POP {R4}
   ADD R6, R4, R5
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #1
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #4
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R11, R4]
   POP {R4}
   SUB R6, R4, R5
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #2
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #4
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R11, R4]
   POP {R4}
   MUL R6, R4, R5
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #3
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #4
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R11, R4]
   POP {R4}
   PUSH {R5}
   PUSH {R4}
   BL $division$
   MOV R6, R0
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #4
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #2
   MOV R5, #4
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
   PUSH {R5}
   MOV R4, #4
   LDR R5, [R11, R4]
   POP {R4}
   PUSH {R5}
   PUSH {R4}
   BL $modulo$
   MOV R6, R1
   PUSH {R6}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printIntegerint$
   POP {R12}
   PUSH {R12}
   MOV R4, #5
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $operacionint$
   POP {R12}
   MOV R4, #5
   MOV R5, #0
   STR R4, [R11, R5]
   MOV R4, #0
   LDR R5, [R11, R4]
   MOV R4, #-1
   MUL R4, R5, R4
   MOV R5, #0
   STR R4, [R11, R5]
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R11, R4]
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
   POP {R1}
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
   .SPACE 8
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"
$char$:
   .asciz "%c"
$vacio$:
   .asciz "%c\n"
$indexoutofbounds$:
   .ascii "IndexOutOfBoundsException\n"