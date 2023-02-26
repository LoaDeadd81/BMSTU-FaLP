(defun mult_first_num (num lst)
    (cond
        ((null lst) Nil)
        ((numberp (car lst)) (cons (setf (car lst) (* (car lst) num)) (cdr lst)))
        (T (cons (car lst) (mult_first_num num (cdr lst))))
    )
)