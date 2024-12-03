; 
; PROBLEM:
; 
; Imagine that you are designing a program to manage ticket sales for a
; theatre. (Also imagine that the theatre is perfectly rectangular in shape!) 
; 
; Design a data definition to represent a seat number in a row, where each 
; row has 32 seats. (Just the seat number, not the row number.)
;  


;; SeatNumber is Natural[1, 32]
;; interp. seat numbers in a row, 1 and 32 are aisle

(define SN1  1)   ;aisle
(define SN2 15)   ;middle
(define SN3 32)   ;aisle

#;
(define (fn-for-seat-num sn)
  (... sn))

;; Template rules used:
;;  - atomic non-distinct: Natural[1, 32]
