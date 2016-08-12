#lang racket

(define (f1 n)
  (if (< n 3)
       n
       (+ (f1 (- n 1)) (f1 (- n 2)) (f1 (- n 3)))))

(f1 0)
(f1 1)
(f1 2)
(f1 3)
(f1 4)
(f1 5)
(f1 6)
(f1 7)
(f1 8)
(f1 9)
(f1 10)
