; 
; PROBLEM:
; 
; DESIGN a function called area that consumes the length of one side 
; of a square and produces the area of the square.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

;; Natural -> Natural
;; Produce area of square with side length s
(check-expect (area 4) 16)
(check-expect (area 0) 0)
(check-expect (area 3) (* 3 3))

;(define (area n) 0)    ;; This is the stab

;(define (area n)       ;; This is the template
;  (... n))

(define (area n)
  (* n n))
