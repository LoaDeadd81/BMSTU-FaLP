(list 'a c)                     ; -> The variable C is unbound.
(list 'a 'c)                    ; -> (a c)
(cons 'a 'b 'c)                 ; -> invalid number of arguments: 3
(cons 'a 'b)                    ; -> (a b)
(cons 'a (b c))                 ; -> The variable C is unbound.
(cons 'a '(b c))                ; -> (a b c)
(list 'a (b c))                 ; -> The variable C is unbound.
(list 'a '(b c))                ; -> (a (b c))
(cons 'a '(b c))                ; -> (a b c)
(list a '(b c))                 ; -> The variable A is unbound.
(list 'a '(b c))                ; -> The variable A is unbound.
(caddr (1 2 3 4 5))             ; -> (a (b c))
(list (+ 1 '(length '(1 2 3)))) ; -> The value   (LENGTH '(1 2 3)) is not of type   NUMBER
(list (+ 1 (length '(1 2 3)))) ; -> (4)
