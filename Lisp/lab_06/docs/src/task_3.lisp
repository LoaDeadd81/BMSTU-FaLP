(defun num-mult (lst num)
    (cond
        ((null lst) Nil)
        (T
            (cons
                (* (car lst) num)
                (num-mult (cdr lst) num)
            )
        )
    )
)

(defun list-mult (lst num)
    (cond
        ((null lst) Nil)
        ((numberp (car lst))
            (cons
                (* (car lst) num)
                (list-mult (cdr lst) num)
            )
        )
        (T
            (cons
                (list-mult (car lst) num)
                (list-mult (cdr lst) num)
            )
        )
    )
)