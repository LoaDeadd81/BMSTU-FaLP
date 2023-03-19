(defun q_roots (a b c)
(with-open-file (stream "out.txt" :direction :output :if-exists :supersede) 
    (cond 
        ((equalp a 0) 
            (cond
                ((equalp b 0)
                    (cond
                        ((equalp c 0) (format stream  "Бесконечно много решений"))
                        (T (format stream  "Нет решение"))
                    )
                )
                (T (format stream  "Корень: ~a" (/ (- c) b)))
            )
        )
        (T
            (let ( (D_sqrt (sqrt (- (* b b) (* 4 a c)))) )
                (let ( (q1 (/ (- (- b) D_sqrt) (* 2 a))) (q2 (/ (+ (- b) D_sqrt) (* 2 a))) )
                    (cond
                        ((= (imagpart q1) 0) (format stream  "Корень 1: ~,4f~%Корень 2: ~,4f~%" q1 q2))
                        (T (format stream  "Корень 1: ~,4f~,4@fi~%Корень 2: ~,4f~,4@fi~%" (realpart q1) (imagpart q1) (realpart q2) (imagpart q2)))
                    )
                )
            )
        )
    )
))