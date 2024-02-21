#lang scheme

;factorial functions using recursive procedure vs iterative procedure


(define (recursive-factorial n)
  (if (= n 1)
      1
      (* n (recursive-factorial (- n 1)))))


(recursive-factorial 6)

(define (iterative-factorial n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)))

(iterative-factorial 5)
