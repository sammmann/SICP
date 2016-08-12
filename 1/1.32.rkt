#lang racket

(define (accumulate combiner null-value term a next b)
  (if (> a b) null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term  a next b))

(define (inc n) (+ n 1))

(define (identity x) x)

(define (sum-integers a b)
  (sum identity a inc b))

(sum-integers 1 10)



(newline)



(define (product term a next b)
  (accumulate * 1 term a next b))

(define (factorial x)
  (product identity 1 inc x))


(factorial 3)

(factorial 6)


(newline)



(define (accumulate-iter combiner null-value term a next b)
  (if (> a b) null-value
      (accumulate combiner (combiner (null-value) (term a)) term (next a) next b)))

(define (sum-iter-integers a b)
  (sum identity a inc b))

(sum-iter-integers 1 10)
