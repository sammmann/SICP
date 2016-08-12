#lang racket

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(define (inc n) (+ n 1))

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(sum-integers 1 10)

