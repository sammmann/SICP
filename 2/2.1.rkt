#lang racket

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (if (and (> (numer x) 0)
           (> (numer y) 0)
           (> (denom x) 0)
           (> (denom y) 0))
       (make-rat (* (numer x) (numer y))
                 (* (denom x) (denom y)))
       (make-rat (* (numer x) (numer y) -1)
                       (* (denom x) (denom y)))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x)))
  (newline)




(define one-half (make-rat 1 2))
(define one-third (make-rat -1 3))

(print-rat (mul-rat one-third one-third))


