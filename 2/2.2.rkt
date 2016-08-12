#lang racket

;line
(define (make-segment p1 p2)
  (cons p1 p2))
(define (start-segment p)
  (car p))
(define (end-segment p)
  (cdr p))
(define (midpoint-segment seg)
  (define xc (/ (+ (x-point (start-segment seg))
        (x-point (end-segment seg)))2))
  (define yc (/ (+ (y-point (start-segment seg))
        (y-point (end-segment seg)))2))
  (define centre (make-point xc yc))
  (print-point centre))

;point
(define (make-point x y) (cons x y))
(define (x-point x) (car x))
(define (y-point y) (cdr y))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;begin
(define start (make-point 1 1))
(define fin (make-point 2 2))
(print-point start)
(print-point fin)

(define seg (make-segment start fin))
(midpoint-segment seg)