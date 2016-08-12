#lang racket

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

;(add-1 zero)
;(add-1 (lambda (f) (lambda (x) x)))
;(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x) f) x)))))
;(lambda (f) (lambda (x) (f (((lambda (x) x) x))))
;(lambda (f) (lambda (x) (f x))))

(define one (lambda (f) (lambda (x) (f x))))

;(add-1 one)
;(add-1 (lambda (f) (lambda (x) (f x))))
;(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f x)) f) x)))))
;(lambda (f) (lambda (x) (f (((lambda (x) (f x)) x)))))
;(lambda (f) (lambda (x) (f (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (square x) (* x x))

((one square) 4) ;16
;(((lambda (f) (lambda (x) (f x))) square) 4)
;((lambda (x) (square x)) 4)
;square 4

((two square) 4) ;256
;(((lambda (f) (lambda (x) (f (f x)))) square) 4)
;((lambda (x) (square (square x))) 4)
;(square (square 4))

;(plus one two)
;(plus one (lambda (f) (lambda (x) (f (f x)))))
;(plus (lambda (f) (lambda (x) (f x))) (lambda (f) (lambda (x) (f (f x)))))
;(plus (lambda (x) ((lambda (f) (lambda (x) (f (f x)))) x))) )
;(plus  ((lambda (f) (lambda (x) (f (f x))))))
