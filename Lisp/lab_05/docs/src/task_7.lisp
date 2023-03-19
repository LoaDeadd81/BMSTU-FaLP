(defun decart (lst1 lst2)
    (mapcan
        #'(lambda (e1)
            (mapcar
                #'(lambda (e2)
                    (list e1 e2)
                )
                lst2
            )
        )
        lst1
    )
)

(defun tst (lst) (mapcan 'sqrt lst))