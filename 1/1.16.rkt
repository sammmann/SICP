#lang racket

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b n a)
  (if (= n 0)
      a
  (if (even? n) 
      (expt-iter (square b) (/ n 2) a)
      (expt-iter b (- n 1) (* a b)))))

(define (square b) (* b b))

(define (even? n)
(= (remainder n 2) 0))

(expt 3 3)