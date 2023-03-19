(defun rec-add-num (lst)
    (cond
        ((null lst) 0)
        (T
            (+ (car lst) (rec-add-num (cdr lst)))
        )
    )
)

(defun rec-add (lst)
    (cond
        ((null lst) 0)
        ((numberp (car lst))
            (+ (car lst) (rec-add (cdr lst)))
        )
        (T
            (+ (rec-add (car lst)) (rec-add (cdr lst)))
        )
    )
)
