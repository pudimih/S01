  10 INPUT ""; n1
  20 INPUT ""; n2
  30 media = (n1 + n2) / 2

  40 IF media > 60 THEN GOTO 200
  50 IF media < 30 THEN GOTO 210
  60 GOTO 100

  100 INPUT ""; n3
  110 novamedia = (media + n3) / 2
  120 IF novamedia >= 5 THEN GOTO 220 ELSE GOTO 230
  190 END

  200 PRINT "Aprovado Direto"
  201 GOTO 190

  210 PRINT "Reprovado Direto"
  211 GOTO 190

  220 PRINT "Aprovado pela NP3"
  221 GOTO 190

  230 PRINT "Reprovado pela NP3"
  231 GOTO 190
