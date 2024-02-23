#lang scheme
#|

UNSOLVED!

|#

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
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

#|
Case: Very Small number
this is an instance of a very small number 9 * 10^-8.
It's square root should have been 0.0003.
But the interpreter gives 0.031250959056630584 as the answer.
The issue here is that the 0.001 in the predicate good-enough? is reached
despite the result being far off. So the 0.001 has to be made
very very small ideally.
|#
(sqrt 0.00000009)



#|
Case: Very Large number
I have to reason it out. Unscuccessful as of now.
|#
(sqrt (* 9 (expt 10 100)))



#|
New guess can be probably composed of having the prior value being
compared to current value. The given comparison right now is of a factor
of 0.001 between guess and x. But we need to see guess of previous iteration
over the current iteration. Offcourse we can improve by lowering the comparsion
factor between guess and x say to 0.0000000001 for instance.

I have to compose the function. Thus this is unsolved.
|#
