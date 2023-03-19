(defun mv (lst res)
    (cond
        ((null lst) res)
        (T
            (mv (cdr lst) (cons (car lst) res))
        )
    )
)

(defun my-reverse (lst)
    (mv lst Nil)
)