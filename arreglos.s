.globl main 
main:
   LDR R11,=$_dataglobal$
   LDR R12,=$_datatemp$
   PUSH {LR}
   PUSH {R12}
   BL $main$
   POP {R12}
   BX R12

$mostrarLista$:
   POP {R12}
   PUSH {LR}
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
$WHILE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #5
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ENDWHILE0$
   PUSH {R12}
   MOV R4, #'_'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
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
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
$WHILE1$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #10
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ENDWHILE1$
   PUSH {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   CMP R5, #10
   MOVLT R4, #1
   MOVGE R4, #0
   CMP R4, #0
   BEQ $SALTOERROR$
   MOV R4, #4
   MUL R4, R4, R5
   ADD R5, R4, #0
   LDR R4, [R11, R5]
   PUSH {R4}
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
   B $WHILE1$
$ENDWHILE1$:
   MOV R4, #0
   MOV R5, #0
   STR R4, [R12, R5]
$WHILE2$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #5
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ENDWHILE2$
   PUSH {R12}
   MOV R4, #'_'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #1
   POP {R5}
   ADD R6, R5, R4
   MOV R4, #0
   STR R6, [R12, R4]
   B $WHILE2$
$ENDWHILE2$:
   PUSH {R12}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printVacio$
   POP {R12}
   POP {PC}
$mensajeboolean$:
   POP {R12}
   POP {R10}
   STR R10, [R12, #0]
   PUSH {LR}
   MOV R4, #0
   LDR R5, [R12, R4]
   CMP R5, #0
   BEQ $END0$
   PUSH {R12}
   MOV R4, #'I'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'n'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'d'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'i'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'c'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'e'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #':'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #' '
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
$END0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   CMP R5, #1
   MOVEQ R5, #0
   MOVNE R5, #1
   MOV R4, R5
   CMP R4, #0
   BEQ $END1$
   PUSH {R12}
   MOV R4, #'V'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'a'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'l'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'o'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #'r'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #':'
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
   PUSH {R12}
   MOV R4, #' '
   PUSH {R4}
   ADD R12, R12, #4
   PUSH {R12}
   BL $printCharchar$
   POP {R12}
$END1$:
   POP {PC}
$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #1
   MOV R5, #8
   STR R4, [R12, R5]
$WHILE3$:
   MOV R4, #8
   LDR R5, [R12, R4]
   CMP R5, #0
   BEQ $ENDWHILE3$
   PUSH {R12}
   MOV R4, #1
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $mensajeboolean$
   POP {R12}
   MOV R4, #1
   MOV R5, #0
   STR R4, [R12, R5]
   PUSH {R12}
   MOV R4, #0
   PUSH {R4}
   ADD R12, R12, #12
   PUSH {R12}
   BL $mensajeboolean$
   POP {R12}
   MOV R4, #2
   MOV R5, #4
   STR R4, [R12, R5]
   MOV R4, #4
   LDR R5, [R12, R4]
   MOV R4, #0
   LDR R6, [R12, R4]
   CMP R6, #10
   MOVLT R4, #1
   MOVGE R4, #0
   CMP R4, #0
   BEQ $SALTOERROR$
   MOV R4, #4
   MUL R4, R4, R6
   ADD R6, R4, #0
   STR R5, [R11, R6]
   PUSH {R12}
   ADD R12, R12, #12
   PUSH {R12}
   BL $mostrarLista$
   POP {R12}
   MOV R4, #0
   MOV R5, #8
   STR R4, [R12, R5]
   B $WHILE3$
$ENDWHILE3$:
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
   .SPACE 40
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