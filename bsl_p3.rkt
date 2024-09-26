; 
; PROBLEM:
; 
; Use the DrRacket square, beside and above functions to create a square
; consisting of four small squares of different colors
;

(require 2htdp/image)


(define (sq color)
    (square 20 "solid" color))

(above
    (beside (sq "blue") (sq "yellow"))
    (beside (sq "yellow") (sq "blue")))
