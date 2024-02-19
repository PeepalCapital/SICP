#lang scheme
(define (sum-square-two-large a b c)
  (cond ((and (> a b) (< c b)) (+ (* a a) (* b b)))
        ((and (> a b) (< b c)) (+ (* a a) (* c c)))
        ((and (> b a) (< a c)) (+ (* c c) (* b b)))
        (else (+ (* a a) (* b b)))))
