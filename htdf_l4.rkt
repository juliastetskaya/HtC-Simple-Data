; 
; PROBLEM:
; 
; DESIGN a function that consumes an image and determines whether the 
; image is tall.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

(require 2htdp/image)

;; Image -> Boolean
;; Determine whether the image is tall (image height is bigger than width)
(check-expect (tall? (rectangle 2 5 "solid" "red")) true)
(check-expect (tall? (rectangle 5 2 "solid" "red")) false)
(check-expect (tall? (square 7 "solid" "blue")) false)

;(define (tall? img) false)    ;; This is the stub

;(define (tall? img)           ;; This is the template
;  (... img))

(define (tall? img)
  (< (image-width img)
     (image-height img)))
