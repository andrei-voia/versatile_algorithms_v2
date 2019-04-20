(defun fetch (cheie lst)
(if (assoc cheie lst) (cadr (assoc cheie lst)) (format t "No no cheie")))

(defun print (lst)
(cond
   ((null (cdr lst)) (list (caar lst)))
   (t (append (list (caar lst))  (print (cdr lst))))
))

(defun bunic (nume)
	(get (get nume 'tata) 'tata))
)

(defun adam (nume)
 (if (null (get (get nume 'tata) 'tata)) (get nume 'tata) (adam (get nume 'tata)))
)

(defun stramos (nume)
 (cond
    ((equal nume nil) nil)
    (t (append (list nume) (stramos (get nume 'tata)) (stramos (get nume 'mama))))
))

(setf (get 'ionica 'mama) 'rahela)