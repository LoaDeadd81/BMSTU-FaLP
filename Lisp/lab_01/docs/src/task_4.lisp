  (list 'Fred 'and 'Wilma)              ; -> (fred and wilma)
  (list 'Fred '(and Wilma))             ; -> (fred (and wilma))
  (cons Nil Nil)                        ; -> (Nil)
  (cons T Nil)                          ; -> T
  (cons Nil T)                          ; -> (Nil . T)
  (list Nil)                            ; -> (Nil)
  (cons '(T) Nil)                       ; -> ((T))
  (list '(one two) '(free temp))        ; -> ((one two) (free temp))
  (cons 'Fred '(and Wilma))             ; -> (Fred and Wilma)
  (cons 'Fred '(Wilma))                 ; -> (Fred Wilma)
  (list Nil Nil)                        ; -> (Nil Nil)
  (list T Nil)                          ; -> (T Nil)
  (list Nil T)                          ; -> (Nil T)
  (cons T (list Nil))                   ; -> (T Nil)
  (list '(T) Nil)                       ; -> ((T) Nil)
  (cons '(one two) '(free temp))        ; -> ((one two) free temp)