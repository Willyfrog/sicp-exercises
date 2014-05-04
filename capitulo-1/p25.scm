;; book definitions
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x) 
  (< (abs (- (square guess) x)) 0.0001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
  
;; ejericicio 1.7

(define (better-sqrt-iter-enough? guess new-guess)
  (< (abs (- (/ (square new-guess) (square guess)) 1.0) 0.0001)))

(define (better-sqrt-iter guess x)
  (if (better-good-enough? guess (improve guess x))
      guess
      (better-sqrt-iter (improve guess x) x)))

(define (better-sqrt x)
  (better-sqrt-iter 1.0 x))
