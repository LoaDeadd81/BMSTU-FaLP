(defun mult_num(lst num)
    (mapcar
        (lambda (elem)
            (* elem num)
        )
        lst
    )
)

(defun mult(lst num)
    (mapcar
        (lambda (elem)
            (cond
                ((listp elem) (mult elem num))
                ((numberp elem) (* elem num))
                (T elem)
            )
        )
        lst
    )
)