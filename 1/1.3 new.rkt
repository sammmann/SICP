#lang racket

(define (sq x)
  (* x x))

(define (sos x y)
  (+ (sq x) (sq y) ))

(define (eval x y z)
  (cond ((> x y) (sos x (max y z)))
        ((< x y) (sos x (max y z)))
        (else 12)))

(define (max x y)
  (if (> x y) x y))

(eval 3 2 1)
