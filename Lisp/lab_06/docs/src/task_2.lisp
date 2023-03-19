(defun first-elem (lst)
    (cond
        ((atom (car lst)) (car lst))
        (T (first-elem (car lst)))
    )
)