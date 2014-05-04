;; ejercicio 1.11

(define (f11-recursive n)
  (if (< n 3)
      n
      (+ (f11-recursive (- n 1))
         (* 2 (f11-recursive (- n 2)))
         (* 3 (f11-recursive (- n 3))))))

(define (f11-iterative top)

  (define (f11-iter a b c current)
    (if (= current)
        c
        (f11-iter b c (+ (* a 3) (* b 2) c) (+ current 1))))
  
  (if (< top 3)
      top
      (f11-iter 1 2 4 3)))

;; ejercicio 1.12


(define (pascal  n)
  
  (define (pascal-nth last-line nth)
    (let ((prev (- nth 1)))
      (cond ((= nth 0) 1)                   ;first
            ((= nth (length last-line)) 1) ;last 
            (else (+ (list-ref last-line prev )
                     (list-ref last-line nth))))))

  (define (pascal-line last-line i)
    (if (> i 0)
        (cons (pascal-nth last-line i) (pascal-line last-line (- i 1)))
        (list (pascal-nth last-line 0))))
  
  (define (pascal-recur last-line)
    (if (= n (length last-line))
        '()
        (let ((new-line (pascal-line last-line (length last-line))))
          (cons new-line (pascal-recur new-line)))))
  
  (pascal-recur '() )) ;; let's start
