(defun mystery (x) (list (second x) (first x)))

(mystery (one two))         ; -> The variable TWO is unbound.
(mystery one 'two)          ; -> The variable ONE is unbound.
(mystery (last one two))    ; -> The variable ONE is unbound.
(mystery free)              ; -> The variable FREE is unbound.