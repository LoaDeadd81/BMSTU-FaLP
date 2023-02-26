(defun is_palindrome (lst)
    (cond
        ((< (length lst) 2) T)
        ((equalp (car lst) (car (last lst)))
        (is_palindrome (cdr (reverse (cdr lst)))))
        (T Nil)
    )
)