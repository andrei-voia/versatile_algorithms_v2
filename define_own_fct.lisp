(defmacro define (funcite param corp)
  (subst funcite 'funcite
  (subst param 'param
  (subst corp 'corp
  '(defun funcite param corp))))
)