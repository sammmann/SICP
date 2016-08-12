#lang racket

(define (f x)
  (+ (let ((x 3))
     (+ x (* x 10)))
   x))

(define (f2 x)
  (let ((x 3)
        (y (+ x 2)))
    (* x y)))

(f 4)

(f2 2)


(newline)




(define (f3 g)
  (g 2))

(define (square x) (* x x))

(f3 square)

(f3 (lambda (z) (* z (+ z 1))))

(f3 f3)