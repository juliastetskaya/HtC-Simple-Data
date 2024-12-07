;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are working on a system that will automate delivery for 
; YesItCanFly! airlines catering service. 
; There are three dinner options for each passenger, chicken, pasta 
; or no dinner at all. 
; 
; Design a data definition to represent a dinner order. Call the type 
; DinnerOrder.
; 


;; DinnerOrder is one of:
;;  - "chicken"
;;  - "pasta"
;;  - "no dinner"
;; interp. represent a dinner order

;; <examples are redundant for enumerations>

#;
(define (fn-for-dinner-order order)
  (cond [(string=? "chicken" order) (...)]
        [(string=? "pasta" order) (...)]
        [(string=? "no dinner" order) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "chicken"
;;  - atomic distinct: "pasta"
;;  - atomic distinct: "no dinner"

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Design the function dinner-order-to-msg that consumes a dinner order 
; and produces a message for the flight attendants saying what the
; passenger ordered. 
; 
; For example, calling dinner-order-to-msg for a chicken dinner would
; produce "The passenger ordered chicken."
; 


;; DinnerOrder -> String
;; Produce a message for the flight attendants saying what the passenger ordered
(check-expect (dinner-order-to-msg "chicken") "The passenger ordered chicken.")
(check-expect (dinner-order-to-msg "pasta") "The passenger ordered pasta.")
(check-expect (dinner-order-to-msg "no dinner") "The passenger ordered nothing.")

;(define (dinner-order-to-msg order) "")     ;; This is the stub

;<use template from DinnerOrder>
(define (dinner-order-to-msg order)
  (cond [(string=? "chicken" order) "The passenger ordered chicken."]
        [(string=? "pasta" order) "The passenger ordered pasta."]
        [(string=? "no dinner" order) "The passenger ordered nothing."]))

