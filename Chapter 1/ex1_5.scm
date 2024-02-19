#lang scheme
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))
                   
#|

Applicative order evaluation:
(test 0 (p))
(test (if (= x 0) 0 y) (p))
(test 0 (p))
(test 0 (p))
(test 0 (p))
....
The (p) will again evaluate to (p) while the first argument
for test would have been evaluated to 0.

Normal order evaluation:
(test 0 (p))
(test (if (= x 0) 0 y) (p))
(test (if ( = 0 0) 0 y) (p))
the if condition tests to 0 hence #t
0

|#
