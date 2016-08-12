#lang racket


(define (sqrt3 x)
  (define (square z) (* z z))
  (define (abs z)
    (if (< z 0)
        (- z)
        z))
   (define (improve guess)
     (/(+ (/ x (square guess)) (* 2 guess)) 3))
   (define (good-enough? guess old)
    (< (abs (- old guess)) 0.000001))
  
    (define (sqrt-iter guess og)
      (if (good-enough? guess og)
      guess
      (sqrt-iter (improve guess)
                 guess)))
  
   (sqrt-iter 1.0 0.0))


(sqrt3 27)
(sqrt3 3375)