(defun last1 (lst) (car (last lst)))
(defun last2 (lst) (car (reverse lst)))
(defun last3 (lst)
    (if (cdr lst)
        (last3 (cdr lst))
        (car lst)
    )
)