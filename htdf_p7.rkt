; 
; PROBLEM:
; 
; You might want to create boxes of different colours.
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a color, and creates a 
; solid 10x10 square of that colour.  Follow the HtDF recipe and leave behind commented out versions of
; the stub and template.
; 

(require 2htdp/image)

;; Color -> Image
;; Produce a solid square of given color.
(check-expect (make-box "red") (square 10 "solid" "red"))
(check-expect (make-box "blue") (square 10 "solid" "blue"))
(check-expect (make-box "green") (square 10 "solid" "green"))

;(define (make-box color) (square 0 "solid" "white"))     ;; This is the stub

;(define (make-box color)                                 ;; This is the template
;  (... color))

(define (make-box color)
  (square 10 "solid" color))
