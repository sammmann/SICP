#lang racket

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (identity x) x)

(define (inc x) (+ x 1))

(define (factorial x)
  (product identity 1 inc x))


(factorial 3)

(factorial 6)



(define (close-pi n)
  (* 4.0 (/ (product f1 1 inc n) (product f2 1 inc n))))

(define (f1 a)
  (if (even? a) (+ a 2)
      (+ a 1)))

(define (f2 a)
  (if (even? a) (+ a 1)
      (+ a 2)))

(newline)
(close-pi 1)

(newline)
(close-pi 2)

(newline)
(close-pi 3)

(newline)
(close-pi 4)

(newline)
(close-pi 5)

(newline)
(close-pi 6000)