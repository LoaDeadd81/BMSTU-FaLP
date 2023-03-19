(defun fast-run (lst)
    (cond
        ((null lst) 0)
        ((eq (length lst) 1) (car lst))
        (T
            (+ 
                (* 
                    (- (length lst) 3)
                    (apply #'min lst)
                )
                (reduce
                    #'+
                    lst
                )
            )
        )
    )
)