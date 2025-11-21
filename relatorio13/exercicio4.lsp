(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista-ocorrencias)
  (if (endp lista-ocorrencias)
      0
      (+ (ocorrencia-nivel-medo (first lista-ocorrencias))
         (soma-medo-recursiva (rest lista-ocorrencias)))))


(defun analise-final (lista-ocorrencias)
  (let* ((total-medo (soma-medo-recursiva lista-ocorrencias))
         (qtd        (length lista-ocorrencias))
         (media      (if (zerop qtd)
                         0
                         (/ total-medo qtd))))
    (mapcar #'ocorrencia-nome
            (remove-if-not
             (lambda (oc)
               (and (> (ocorrencia-agentes-enviados oc) 3)
                    (> (ocorrencia-nivel-medo oc) media)))
             lista-ocorrencias))))



(defparameter *lista-ocorrencias*
  (list
   (make-ocorrencia
    :nome "rua1"
    :ritual "ritual inicial"
    :nivel-medo 8
    :agentes-enviados 2)

   (make-ocorrencia
    :nome "rua2"
    :ritual "Ritual 2"
    :nivel-medo 9
    :agentes-enviados 4)

   (make-ocorrencia
    :nome "casa"
    :ritual "ritual 3"
    :nivel-medo 6
    :agentes-enviados 5)

   (make-ocorrencia
    :nome "torre"
    :ritual "Ritual 4"
    :nivel-medo 10
    :agentes-enviados 6)

   (make-ocorrencia
    :nome "escada"
    :ritual "ritual 5"
    :nivel-medo 4
    :agentes-enviados 3)))

(format t "~%resultado final:~a~%"
        (analise-final *lista-ocorrencias*))
