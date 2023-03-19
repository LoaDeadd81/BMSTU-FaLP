(defun rev(lst)
    (reduce
        #'(lambda (x y) (cons y x))
        (cons nil lst)
    )
)

(defun is-palindrome (lst)
    (equal lst (rev lst))
)