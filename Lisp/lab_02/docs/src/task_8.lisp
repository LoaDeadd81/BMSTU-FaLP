(list 'cons t NIL)                  ; -> (cons T Nil)
(eval (list 'cons t NIL))           ; -> (T)
(eval (eval (list 'cons t NIL)))    ; -> The function COMMON-LISP:T is undefined.
(apply #'cons '(t NIL))              ; -> (T)
(eval NIL)                          ; -> Nil
(list 'eval NIL)                    ; -> (eval Nil)
(eval (list 'eval NIL))             ; -> Nil