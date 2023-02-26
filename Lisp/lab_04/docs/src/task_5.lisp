(defun swap-first-last (lst)
    (cons
        ((null lst) Nil)
        ((= (length lst) 1) lst)
        (T
            (let ((f (car lst)))
                (setf (car lst) (car (last lst)))
                (setf (car (last lst)) f)
                lst
            )
        )
    )
)