#lang racket

(define (count-change amount)
  (cc amount 5))

(define (cc a k)
  (cond ((= a 0) 1)
  ((or (< a 0) (= k 0)) 0)
  (else (+ (cc a (- k 1))
           (cc (- a (denom k)) k)
           ))))

(define (denom kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
  ((= kinds-of-coins 2) 5)
  ((= kinds-of-coins 3) 10)
  ((= kinds-of-coins 4) 25)
  ((= kinds-of-coins 5) 50)))

(count-change 100)