(defun dec (lst)
    (mapcar
        (lambda (elem)
            (cond
                ((numberp elem) (- elem 10))
                (T elem)
            )
        )
        lst
    )
)