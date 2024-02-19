#lang scheme
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
                   
#|

The operator + or - is chosen by the if special form.
This turns the value of b into an absolute value of b.
Thus the result is to always compute a plus the absolute value of b.

|#
