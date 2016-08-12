#lang racket

(define (prime? n)
  (= n (smallest-divisor n)))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (square x) (* x x))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


(define (filtered-accumulate pred combiner null-value term a next b)
  (if (> a b) null-value
      (if (pred a)
          (combiner (term a) (filtered-accumulate pred combiner null-value term (next a) next b))
          (filtered-accumulate pred combiner null-value term (next a) next b))))

(define (accumulate pred combiner null-value term a next b)
  (filtered-accumulate pred combiner null-value term a next b))

(define (sum pred term a next b)
  (accumulate pred + 0 term  a next b))

(define (prod pred term a next b)
  (accumulate pred * 0 term  a next b))

(define (inc n) (+ n 1))

(define (identity x) x)

(define (sum-integers a b)
  (sum even? identity a inc b))

(sum-integers 1 10)



(newline)


(define (sum-squares a b)
  (sum prime? square a inc b))

(sum-squares 1 10)



(newline)

(define (prod-n term a next b)
  (define (prime-n? a)
  (= (gcd a b) 1))
  (accumulate prime-n? * 1 term  a next b))

(define (prod-simpl b)
  (prod-n * 1 inc b))

(prod-simpl 10)

