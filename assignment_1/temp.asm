MVI A, 6
STA _a
MVI A, 12
STA _b
MVI A, 4
STA _d
LDA _d
PUSH PSW
LDA _b
MOV B, A
POP PSW
PUSH PSW
LDA _a
MOV C, A
POP PSW
PUSH PSW
PUSH B
MOV B,C
MOV A,B
MVI C, 0
LOOP0:
SUB B
INR C
CMP B
JC LOOP0
MOV A, C
POP B
MOV B, A
POP PSW
PUSH B
MOV B,B
MOV A,A
MVI C, 0
LOOP1:
SUB B
INR C
CMP B
JC LOOP1
MOV A, C
POP B
STA _c
HLT