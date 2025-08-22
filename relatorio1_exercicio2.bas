
20 LET numero = RND(100)
30 LET tentativas = 0
40 
50 PRINT "=== JOGO DE ADIVINHACAO ==="
60 PRINT "Tente adivinhar o numero entre 0 e 100"
70 
80 INPUT "Digite seu palpite: "; palpite
100 LET tentativas = tentativas + 1
110 
120 IF palpite = numero THEN GOTO 200
130 IF palpite < numero THEN GOTO 300
140 IF palpite > numero THEN GOTO 400
150 
200 PRINT "PARABENS! Voce acertou em "+ tentativas + " tentativas!"
210 GOTO 520
300 PRINT "O numero correto e MAIOR que" + palpite
310 GOTO 80
400 PRINT "O numero correto e MENOR que" + palpite
410 GOTO 80
520 PRINT "Fim do jogo. Obrigado por jogar!"
530 END
