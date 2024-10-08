; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 

(define (greater a b)
  (if (> a b)
      a
      b))

(greater 5 6)
(greater 8 2)
