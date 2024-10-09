; 
; PROBLEM:
; 
; DESIGN a function called image-area that consumes an image and produces the 
; area of that image. For the area it is sufficient to just multiple the image's 
; width by its height.  Follow the HtDF recipe and leave behind commented 
; out versions of the stub and template.
; 

(require 2htdp/image)

;; Image -> Number
;; Produce the area of the given image
(check-expect (image-area (rectangle 5 2 "solid" "red")) 10)
(check-expect (image-area (square 7 "solid" "blue")) (* 7 7))

;(define (image-area img) 0)    ;; This is the stub

;(define (image-area img)       ;; This is the template
;  (... img))

(define (image-area img)
  (* (image-width img)
     (image-height img)))
