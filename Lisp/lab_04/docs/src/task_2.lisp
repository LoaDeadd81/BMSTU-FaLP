(reverse '(a b c)) ; -> (c b a)
(reverse ()) ; -> Nil
(reverse '(a b (c (d)))) ; -> ((c (d)) b a)
(reverse '((a b c))) ; -> (( a b c))
(reverse '(a)) ; -> (a)
(last '(a b c)) ; -> (c)
(last '(a b (c))) ; -> ((c))
(last '(a)) ; -> (a)
(last ()) ; -> Nil
(last '((a b c))) ; -> ((a b c))