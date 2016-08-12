#lang racket

(define (square x) (* x x))

(define (inc x) (+ x 1))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (cond ((= n 1) (lambda (x) (f x)))
        (else (compose (repeated f (- n 1)) f))))

((repeated inc 3) 5) 

((repeated square 2) 5)

(newline)

(define (repeated-iter f n)
  
  (define (iters i acum)
      (if (= i n) acum 
          (iters (+ i 1) (compose (lambda (x) (f x)) acum))))
  
  (iters 1 (lambda (x) (f x))))

((repeated-iter inc 3) 5) 

((repeated-iter square 2) 5)
