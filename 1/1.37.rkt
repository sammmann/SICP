#lang racket

(define (cont-frac n d k)

  (define (cf n d k i)
    (if (= i k) 0
        (/ (n i) (+ (d i) (cf n d k (+ i 1))))))

  (cf n d k 1))


(/ 1(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           13))




(newline)

(define (cont-frac-iter n d k)
  
  (define (cf-iter n d k acum)
    (let ((acum (/ (n k) (+ (d k) acum))))
      (if (< k 0) acum
          (cf-iter n d (- k 1) acum))))

  (cf-iter n d k 0))


(/ 1(cont-frac-iter (lambda (i) 1.0)
           (lambda (i) 1.0)
           10))