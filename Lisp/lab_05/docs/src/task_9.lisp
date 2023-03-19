(defun lenr (lst)
    (reduce
       #'+
       (mapcar
            #'(lambda (elem)
                (cond
                    ((null elem) 0)
                    ((atom elem) 1)
                    (T (lenr elem))
                )
            )
            lst
       )
    )
)