; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes an image, 
; and appears to put a box around it. Note that you can do this by creating an "outline" 
; rectangle that is bigger than the image, and then using overlay to put it on top of the image. 
; For example:
; 
; (boxify (ellipse 60 30 "solid" "red")) should produce .
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

(require 2htdp/image)

;; Image -> Image
;; Put a box around given image. Box is 1 pixel wider and taller than given image.
(check-expect (boxify
               (square 5 "solid" "red"))
               (overlay (square 5 "solid" "red") (rectangle 6 6 "outline" "black")))
(check-expect (boxify
               (rectangle 10 20 "solid" "red"))
               (overlay (rectangle 10 20 "solid" "red") (rectangle 11 21 "outline" "black")))


;(define (boxify img) img)     ;; This is the stub

;(define (boxify img)          ;; This is the template
;  (... img))

(define (boxify img)
  (overlay img
           (rectangle
            (+ 1 (image-width img))
            (+ 1 (image-height img))
            "outline"
            "black")))
