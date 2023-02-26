(setf lst1 '( a b c))
(setf lst2 '( d e))

(cons lstl lst2)    ; -> ((a b c) d e)
(list lst1 lst2)    ; -> ((a b c) (d e))
(append lst1 lst2)  ; -> (a b c d e)