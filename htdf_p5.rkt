;
; PROBLEM:
; 
; Design a function that consumes a number and produces a blue solid triangle of that size.
; 
; You should use The How to Design Functions (HtDF) recipe, and your complete design should include
; signature, purpose, commented out stub, examples/tests, commented out template and the completed function.


(require 2htdp/image)

;; Natural -> Image
;; Produce a blue solid triangle of given size.
(check-expect (get-triangle 5) (triangle 5 "solid" "blue"))
(check-expect (get-triangle 1) (triangle 1 "solid" "blue"))
(check-expect (get-triangle 50) (triangle 50 "solid" "blue"))


;(define (get-triangle num) empty-image)     ;; This is the stub

;(define (get-triangle num)                  ;; This is the template
;  (... num))

(define (get-triangle num)
  (triangle num "solid" "blue"))
