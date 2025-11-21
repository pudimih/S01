(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defvar *catalogo*
  (list
    (make-criatura :nome "Peixe Ocular" :ambiente "Safe Shallows" :periculosidade "Baixa" :vida-media 10)
    (make-criatura :nome "Reaper Leviathan" :ambiente "Aurora Zone" :periculosidade "Alta" :vida-media 190)
    (make-criatura :nome "ccriatura3" :ambiente "Deep Grand Reef" :periculosidade "Media" :vida-media 800)
    (make-criatura :nome "criatura4" :ambiente "Safe Shallows" :periculosidade "Baixa" :vida-media 7)))

(defun filtra-por-perigo (catalogo)
  (remove-if-not
   (lambda (c)
     (not (string-equal (criatura-periculosidade c) "Baixa")))
   catalogo))

(defun relatorio-profundidade (catalogo)
  (let ((criaturas-deep
         (remove-if-not
          (lambda (c)
            (search "Deep" (criatura-ambiente c) :test #'char-equal))
          catalogo)))
    (mapcar
     (lambda (c)
       (format nil "~A: Vive em ~A"
               (criatura-nome c)
               (criatura-ambiente c)))
     criaturas-deep)))

(princ "Filtro de Perigo") (terpri)
(princ "Criaturas Perigosas (nao Baixa): ")
(print (mapcar #'criatura-nome (filtra-por-perigo *catalogo*))) (terpri)

(princ "Relatorio de Profundidade")
(print (relatorio-profundidade *catalogo*))
