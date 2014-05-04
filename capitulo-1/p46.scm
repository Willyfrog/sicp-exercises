;; ejercicio 1.16

(define (fast-expt b n)
  (define (expt-iter base expt acc)
    (cond
     ((= expt 0) acc)
     ((even? expt) (expt-iter (square base) (/ expt 2) acc))
     (else (expt-iter base (- expt 1) (* base acc)))))

  (expt-iter b n 1))

;; ejercicio 1.17

(define (double x)
  (* 2 x))

(define (halve x)
  (/ x 2))

(define (fast-* x y)
  (cond ((= y 0) 0)
        ((even? y) (fast-* (double x) (halve y)))
        (else (+ x (fast-* x (- y 1))))))

;; ejercicio 1.18

(define (ifast-* x y)
  (define (iter x y acc)
    (cond ((= y 0) acc)
          ((even? y) (iter (double x) (halve y) acc))
          (else (iter x (- y 1) (+ acc x)))))
  (iter x y 0))
