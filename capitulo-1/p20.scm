;; ejericicio 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

;; ejericicio 1.3
;  Define a procedure that takes three numbers as
;  arguments and returns the sum of the squares of the two larger
;    numbers.

; copiamos las definiciones dadas por el propio texto
(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (sum-squares-largest x y z)
  (cond ((and (>= x z) (>= y z)) (sum-of-squares x y))
        ((and (>= x y) (>= z y)) (sum-of-squares x z))
        (else (sum-of-squares y z))))

