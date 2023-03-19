(defun roll_sum (pair)
    (+ (car pair) (cdr pair))
)

(defun roll ()
    (cons
        (+ (random 6) 1)
        (+ (random 6) 1)
    )
)

(defun check_reroll (pair)
    (or
        (= (car pair) (cdr pair) 1)
        (= (car pair) (cdr pair) 6)
    )
)

(defun check_win (pair)
    (or
        (= (roll_sum pair) 7)
        (= (roll_sum pair) 11)
    )
)

(defvar p1)
(defvar p2)

(defun q1()
    (setq p1 (roll))
    (format T "~%Первый игрок выбросил: ~A ~%" p1)
    (cond
        ((check_reroll p1) (q1))
        ((check_win p1) (q4))
        (T (q2))
    )
)

(defun q2()
    (setq p2 (roll))
    (format T "~%Второй игрок выбросил: ~A ~%" p2)
    (cond
        ((check_reroll p2) (q2))
        ((check_win p2) (q5))
        (T (q3))
    )
)

(defun q3()
    (cond
        ((< (roll_sum p1) (roll_sum p2)) (q5))
        (T (q4))
    )
)

(defun q4()
    (format T "~%Первый игрок победил ~%")
)

(defun q5()
    (format T "~%Второй игрок победил ~%")
)

(defun start-game()
    (q1)
)