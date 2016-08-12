#lang racket

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (square n) (* n n))

(define (karm n)
  (karm-iter n 1))

(define (karm-iter n a)
  (if (< a n)
        (if (= a (expmod a n n))
              (karm-iter n (+ a 1))
              false)
        true))


(define (prime? n)
  (karm n))

(prime? 9)

(prime? 5)

(prime? 561)

(prime? 1105)
