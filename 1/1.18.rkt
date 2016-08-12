#lang racket
(define (* a b)
  (*-iter a b 0))

(define (*-iter a b n)
  (cond ((= b 0) n)
        ((even? b) (*-iter (double a) (halve b) n))
        (else (*-iter a (- b 1) (+ n a)))
        ))

(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(* 2 5)

(* 2 3)

(* 2 2)

(* 2 8)