#lang racket

(define (inc x) (+ x 1))

(define (square x) (* x x))

(define (smooth f)  
  (define (aver f y z)
    (/ (+ f y z) 3))
  (define dx 0.0001)
  
  (lambda (x) (aver (f (- x dx))
                    (f x)
                    (f (+ x dx)))))

(define (repeated-iter f n)
  
  (define (iters i acum)
      (if (= i n) acum 
          (iters (+ i 1) (compose (lambda (x) (f x)) acum))))
  
  (iters 1 (lambda (x) (f x))))

(define (smooth-n f n)
  (repeated-iter (smooth f) n))

((smooth inc) 1)

((smooth-n inc 1) 1)

((smooth-n square 2) 5)
