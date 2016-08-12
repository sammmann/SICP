#lang racket

(define (cont-frac n d k)

  (define (cf n d k i)
    (if (= i k) 0
        (/ (n i) (+ (d i) (cf n d k (+ i 1))))))

  (cf n d k 1))


(+ 2(cont-frac (lambda (i) 1.0)
           (lambda (i)
             (cond ((= i 1) 1)
                   ((= i 2) 2)
                   (else (if (= (remainder i 3) 2) (* 2 (/ (+ i 1) 3)) 1))))
           10))
