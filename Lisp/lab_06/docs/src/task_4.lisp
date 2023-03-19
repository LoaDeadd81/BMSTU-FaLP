(defun sb (lst l r res)
    (cond
        ((null lst) res)
        ((< l (car lst) r)
            (sb (cdr lst) l r (cons (car lst) res))
        )
        (T 
            (sb (cdr lst) l r res)
        )
    )
)

(defun select-between (lst l r)
    (sb lst l r Nil)
)