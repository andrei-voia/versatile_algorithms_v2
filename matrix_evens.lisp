(defun NUM_PARE (matrice)
    (do ( ( i 0 (+ i 1) ) (num_par 0 ))
        ( (= i (CAR (ARRAY-DIMENSIONS matrice)) ) num_par )
        (do ( ( j 0 (+ j 1) ) )
            ( (= j (CADR (ARRAY-DIMENSIONS matrice))))
            ( if (EVENP (aref matrice i j)) (setq num_par (+ num_par 1))        )

        )      
    )
)