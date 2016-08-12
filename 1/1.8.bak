#lang racket

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sqrt x)
  (sqrt-iter 1.0 x 0.0))

(define (good-enough? guess x old)
  "(< (abs (- (square guess) x)) 0.001))"
  (< (abs (- old guess)) 0.000001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x og)
  (if (good-enough? guess x og)
  guess
  (sqrt-iter (improve guess x)
             x guess)))

(sqrt 9)
(sqrt 0.00000001) 
(sqrt 99999999999999999)
(sqrt 1000000000000000)
