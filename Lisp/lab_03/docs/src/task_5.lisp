(and 'fee 'fie 'foe)            ; -> foe
(or 'fee 'fie 'foe)             ; -> fee
(or nil 'fie 'foe)              ; -> fie
(and nil 'fie 'foe)             ; -> Nil
(and (equal 'abc 'abc) 'yes)    ; -> yes
(or (equal 'abc 'abc) 'yes)     ; -> T