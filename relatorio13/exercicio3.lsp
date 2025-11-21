(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defparameter *catalogo*
  (list
    (make-item :nome "Lamina do Sussurro Vazio" :tipo 'Arma :preco 1200 :forca-magica 95)
    (make-item :nome "Elmo da Cegueira" :tipo 'Artefato :preco 850 :forca-magica 40)
    (make-item :nome "Pocao de Invisibilidade Falha" :tipo 'Pocao :preco 300 :forca-magica 10)
    (make-item :nome "Cajado da Peste" :tipo 'Arma :preco 2500 :forca-magica 75)
    (make-item :nome "Anel do Devorador de Almas" :tipo 'Artefato :preco 4000 :forca-magica 120)
    (make-item :nome "Flecha do Cacador Amaldicoado" :tipo 'Arma :preco 500 :forca-magica 85)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun processa-venda (catalogo)
  (let* ((armas
           (remove-if-not (lambda (item)
                            (eq (item-tipo item) 'Arma))
                          catalogo))
         (armas-com-imposto
           (mapcar (lambda (item)
                     (make-item
                       :nome (item-nome item)
                       :tipo (item-tipo item)
                       :preco (adiciona-imposto (item-preco item))
                       :forca-magica (item-forca-magica item)))
                   armas))
         (resumo-venda
           (mapcar (lambda (item)
                     (list
                       (item-nome item)
                       (bonus-maldicao (item-forca-magica item))
                       (item-preco item)))
                   armas-com-imposto)))
    resumo-venda))

(let ((resultado (processa-venda *catalogo*)))
  (dolist (linha resultado)
    (format t "~a~%" linha)))
