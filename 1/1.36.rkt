#lang racket

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  
  (define (try guess i)
    (let ((next (f guess)))
      (display i)
      (display " ")
      (display next)
      (newline)
      (if (close-enough? guess next)
          next
          (try next (+ i 1)))))
  (try first-guess 1))

(define (average x y)
  (/ (+ x y) 2))

(fixed-point (lambda (x) (/ (log 1000) (log x))) 1.1)

(newline)

(fixed-point (lambda (x) (average x (/ (log 1000) (log x))) ) 1.1)
