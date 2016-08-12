#lang racket

(define (tan-cf x k)

  (define (cf x n k i)
    (if (= i k) 1
        (- (+ i (- i 1)) (/ (n x) (cf x n k (+ i 1))))))

  (/ x (cf x (lambda (x) (* x x)) k 1)))


(tan-cf 1.0 10.0)


(newline)


(define (tan-cf-iter x k)
  
  (define (cf-iter x n k acum)
    (let ((acum (/ (n x) (- (+ k (- k 1)) acum))))
      (if (= k 1) acum
          (cf-iter x n (- k 1) acum))))

  (cf-iter x (lambda (x) (* x x)) k 0))


(tan-cf-iter 1.0 10)
