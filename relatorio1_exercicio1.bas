10 INPUT ""; n1
20 INPUT ""; n2
30 media = (n1 + n2) / 2
35 PRINT MEDIA
40 IF media > 60 THEN PRINT "Aprovado Direto" ELSE GOTO 50
50 IF media < 40 THEN PRINT "Reprovado Direto" ELSE GOTO 100
100 INPUT ""; n3
110 novamedia = (media + n3) / 2
120 IF novamedia >= 50 THEN PRINT "Aprovado pela NP3" ELSE PRINT "Reprovado pela NP3"
190 END
