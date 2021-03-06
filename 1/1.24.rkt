#lang racket

(define (timed-prime-test n k)
  (start-prime-test n k (runtime)))

(define (runtime) 
  (current-milliseconds))

(define (start-prime-test n k start-time) 
  (if (fast-prime? n k) 
      (report-prime n (- (runtime) start-time)) 
      false))

(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline)
  true)

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square n)
  (* n n))

(define (even? n)
  (= (remainder n 2) 0))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (search-for-primes n k)
  (timed-prime-test n k))

(list 
   (timed-prime-test 1009 100000) 
   (timed-prime-test 1013 100000) 
   (timed-prime-test 1019 100000) 
   (timed-prime-test 10007 100000) 
   (timed-prime-test 10009 100000) 
   (timed-prime-test 10037 100000) 
   (timed-prime-test 100003 100000) 
   (timed-prime-test 100019 100000) 
   (timed-prime-test 100043 100000) 
   (timed-prime-test 1000003 100000) 
   (timed-prime-test 1000033 100000) 
   (timed-prime-test 1000037 100000))