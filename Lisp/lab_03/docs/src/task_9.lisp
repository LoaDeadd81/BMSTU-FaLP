; original
(defun how_alike (x y)
    (cond ((or (= x y) (equal x y)) 'the_same)
    ((and (oddp x) (oddp y)) 'both_odd)
    ((and (evenp x) (evenp y)) 'both_even)
    `(t 'difference) ) )

; with IF, AND/OR
(defun how_alike_new (x y) (if (or (= x y) (equal x y)) 'the_same
                               (if (and (oddp x) (oddp y)) 'both_odd
                                   (if (and (evenp x) (evenp y)) 'both_even
                                       'difference
                                   )
                               )
                            ))