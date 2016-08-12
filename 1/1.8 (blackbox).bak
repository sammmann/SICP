#lang racket

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sqrt3 x)
  (sqrt-iter 1.0 x 0.0))

(define (good-enough? guess x old)
  (< (abs (- old guess)) 0.000001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (/(+ (/ x (square guess)) (* 2 guess)) 3))

(define (sqrt-iter guess x og)
  (if (good-enough? guess x og)
  guess
  (sqrt-iter (improve guess x)
             x guess)))

(sqrt3 27)
(sqrt3 3375)