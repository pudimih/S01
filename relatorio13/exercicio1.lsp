(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5)
         (< peso-kg 20))
     10)
    ((and (>= idade-anos 5)
          (<= idade-anos 12)
          (>= peso-kg 20))
     25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string-equal nome-da-erva "Ginseng")
     (* preco-base 3.0))
    ((string-equal nome-da-erva "Lotus")
     (* preco-base 1.5))
    (t preco-base)))

(princ "Dosagem para 11 anos, 37kg: ")
(princ (calcula-dosagem 60 14))
(terpri)

(princ "Preco final de Lotus (10 moedas base): ")
(princ (ajusta-preco 10 "Lotus"))
(terpri)

(princ "Dosagem (20 anos, 60kg): ")
(princ (calcula-dosagem 25 3))
(terpri)

(princ "Dosagem (15 anos, 15kg): ")
(princ (calcula-dosagem 15 10))
(terpri)

(princ "Dosagem (1 anos, 8kg): ")
(princ (calcula-dosagem 20 8))
(terpri)

(princ "Dosagem (14 anos, 60kg): ")
(princ (calcula-dosagem 60 14))
(terpri)

(princ "Preco Ginseng: ")
(princ (ajusta-preco 10 "Ginseng"))
(terpri)

(princ "Preco Lotus: ")
(princ (ajusta-preco 10 "Lotus"))
(terpri)

(princ "Preco Padrao: ")
(princ (ajusta-preco 10 "Outra Erva"))
(terpri)
