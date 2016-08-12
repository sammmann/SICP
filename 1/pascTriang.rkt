#lang racket

(define (pascal-tri n m)
  (cond ((= n 0) 1)
        ((= n m) 1)
        ((= m 0) 1)
        ((> n m) (+ (pascal-tri (- n 1) m) (pascal-tri (- n 1) (- m 1)))
         )))


(pascal-tri 4 2)

(pascal-tri 10 4)

(pascal-tri 9 9)

(pascal-tri 5 0)

(pascal-tri 9 1)

(pascal-tri 5 10)