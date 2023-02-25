(defun q_roots (a b c)
    (or
        (and
            (equalp a 0)
            (/ (- c) b)
        )
        (let ( (D_sqrt (sqrt (- (* b b) (* 4 a c)))) )
            (or
                (and
                    (equalp D_sqrt 0)
                    (/ (- b) (* 2 a))
                )
                (list
                    (/ (- (- b) D_sqrt) (* 2 a))
                    (/ (+ (- b) D_sqrt) (* 2 a))
                )
            )
        )
    )
)