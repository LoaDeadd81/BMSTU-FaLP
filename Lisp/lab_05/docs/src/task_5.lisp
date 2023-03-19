(defun is-sub (lst1 lst2)
    (reduce
        #'(lambda (x y) (and x y))
        (mapcar
            #'(lambda (elem)
                (cond
                    ((member elem lst1) T)
                    (T Nil)
                )
            )
            lst2
        )
    )
)


(defun set-equal (lst1 lst2)
    (and (is-sub lst1 lst2) (is-sub lst2 lst1))
)