(START)
@8000
D=A
@SCREEN
D=D+A
@i
M=D

(LOOP)
// loop continuisly if no key is pressed
@KBD
D=M
@LOOP
D;JEQ

(BLACK)
// Set register located in i to black
@i
A=M
M=-1

// Set pin to one below i
@i
M=M-1
D=M
@SCREEN
D=D-A
@BLACK
D;JGE

// Whille key is held
(KEYPRESSED)
@KBD
D=M
@KEYPRESSED
D;JGT

@8000
D=A
@SCREEN
D=D+A
@i
M=D

(WHITE)
// Set register located in i to WHITE
@i
A=M
M=0

// Set pin to one below i
@i
M=M-1
D=M
@SCREEN
D=D-A
@WHITE
D;JGE

@START
0;JMP