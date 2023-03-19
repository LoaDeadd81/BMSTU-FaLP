(defun select-between (lst l r)
    (remove-if-not
        #'(lambda (x) (< l x r))
        lst
    )
)

(defun sorted-select-between (lst l r)
    (funcall
        #'sort
        (select-between lst l r) #'<
    )
)