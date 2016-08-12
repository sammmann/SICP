#lang racket

(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

(define (cons x y)
  (* (expt 2 x) (expt 3 y)))

(define (car z)
    (define (b z n)
    (if (> (remainder z 2) 0)
        n
        (b (/ z 2) (+ n 1))))
  (b z 0))

(define (cdr z)
    (define (b z n)
    (if (> (remainder z 3) 0)
        n
        (b (/ z 3) (+ n 1))))
  (b z 0))

;(<= z (expt 2 n))
(define z (cons 5 4)) ;2592
(car z)
(newline)
(cdr z)