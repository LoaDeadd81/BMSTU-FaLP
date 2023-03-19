(defun sqr (lst)
    (mapcar
        (lambda (elem)
            (cond
                ((numberp elem) (* elem elem))
                (T elem)
            )
        )
        lst
    )
)