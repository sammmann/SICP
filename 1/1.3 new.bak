#lang racket

(define (sq x)
  (* x x))

(define (sos x y)
  (+ (sq x) (sq y) ))

(define (eval x y z)
  (cond ((> x y)
         (if (> y z) (sos x y) (sos x z)))
        ((< x y)
         (if (> x z) (sos y x) (sos y z)))
        ((> z x)
         (if (> x y) (sos z y) (sos z y)))
        (else - 10) ))



(eval 3 2 1)
(eval 3 1 2)
(eval 1 3 2)
(eval 2 3 1)
(eval 1 2 3)
(eval 2 1 3)