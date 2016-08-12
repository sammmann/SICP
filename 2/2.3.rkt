#lang racket
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

(define (len seg)
  (+ (- (x-point (end-segment seg))
        (x-point (start-segment seg)))
     (- (y-point (end-segment seg))
        (y-point (start-segment seg)))))

;rect
(define (make-a-rect s1 s2)
  (cons s1 s2))
(define (line1 rect) (car rect))
(define (line2 rect) (cdr rect))

(define (perim rect)
  (* 2 (+ (len (line1 rect)) (len (line2 rect)))))

(define (square rect)
  (* (len (line1 rect)) (len (line2 rect))))

;begin
(define p1 (make-point 0 0))
(define p2 (make-point 0 2))
(define p3 (make-point 2 0))
(define p4 (make-point 2 2))

(define seg1 (make-segment p1 p2))
(define seg2 (make-segment p3 p4))
;(display (len seg1))
;(newline)
;(display (len seg2))

(define rect (make-a-rect seg1 seg2))
;(display (line1 rect))
(display (perim rect))
(newline)
(display (square rect))