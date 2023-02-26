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

(defun roll_sum (pair)
    (+ (car pair) (cdr pair))
)

(defun check_win (pair)
    (or
        (= (roll_sum pair) 7)
        (= (roll_sum pair) 11)
    )
)

(defun play_round ()
    (let ( (pair (roll)) )
        (cond
            (
                (check_reroll pair)
                (play_round)
            )
            (T pair)
        )
    )
)

(defun play_dice ()
    (let ( (pl1 (play_round)) (pl2 (play_round)) )
        (format T "~%Player 1: ~A ~%" pl1)
        (format T "Player 2: ~A ~%" pl2)
        (cond
            (
                (check_win pl1)
                (princ "Player 1 wins")
            )
            (
                (check_win pl2)
                (princ "Player 2 wins")
            )
            (
                (> (roll_sum pl1) (roll_sum pl2))
                (princ "Player 1 wins")
            )
            (
                (< (roll_sum pl1) (roll_sum pl2))
                (princ "Player 2 wins")
            )
            (
                T
                (princ "Draw")
            )
        )
    )
)