#lang racket

(define (integral-simpo f a b n)
  
  (define h
    (/ (- b a) n))

  (define (ck k)
    (cond ((or (= k 0) (= k n)) 1)
          ((even? n) 2)
          (else 4)))
  
  (define (inc k)
    (+ k 1))

  (define (yk k)
    (* (ck k) (f (+ a (* k h)))))

  (/ (* (sum yk 0 inc n) h) 3)
  )

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (cube x) (* x x x))

(integral-simpo cube 0 1 2)

(integral-simpo cube 0 1 100)

(integral-simpo cube 0 1 1000)