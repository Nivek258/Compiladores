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
$WHILE0$:
   MOV R4, #0
   LDR R5, [R12, R4]
   PUSH {R5}
   MOV R4, #10
   POP {R5}
   CMP R5, R4
   MOVLT R6, #1
   MOVGE R6, #0
   CMP R6, #0
   BEQ $ENDWHILE0$
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
   B $WHILE0$
$ENDWHILE0$:
   POP {PC}
$main$:
   POP {R12}
   PUSH {LR}
   MOV R4, #1
   MOV R5, #8
   STR R4, [R12, R5]
$WHILE1$:
   MOV R4, #8
   LDR R5, [R12, R4]
   CMP R5, #0
   BEQ $ENDWHILE1$
   PUSH {R12}
   ADD R12, R12, #12
   PUSH {R12}
   BL $mostrarLista$
   POP {R12}
   B $WHILE1$
$ENDWHILE1$:
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
   .SPACE 40
$_datatemp$:
   .SPACE 1024
$int$:
   .asciz "%d\n"