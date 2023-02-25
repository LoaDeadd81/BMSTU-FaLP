(defun is_between_cond (x a b) (cond ((< a x) (< x b)) ((< b x) (< x a))))          ; cond
(defun is_between_if (x a b) (if (< a x) (< x b) (if (< b x) (< x a))))             ; if
(defun is_between_andor (x a b) (or (and (< a x) (< x b)) (and (< b x) (< x a))))   ; or/and

