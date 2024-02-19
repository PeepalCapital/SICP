#lang scheme

#|

Using Newton's method to compute square root with new-if procedure.
Dr Racket says "The evaluation thread is no longer running, so no
evaluation can take place until the next execution.
The program ran out of memory."

This happens because 'if' is a special form which gets evaluated basis
normal-order evaluation. But 'new-if' is an ordinary procedure which is
getting evaluated via applicative-order. In this evaluation method all arguments
are evaluated simultaneously. The new-if calls sqrt-iter recursively in this case.

|#

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
