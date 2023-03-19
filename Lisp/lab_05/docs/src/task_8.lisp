(defun find_in_table (lst item)
    (cond
        ((null lst) Nil)
        ((equal item (caar lst)) (cdar lst))
        ((equal item (cdar lst)) (caar lst))
        (T (find_in_table (cdr lst) item))
    )
)