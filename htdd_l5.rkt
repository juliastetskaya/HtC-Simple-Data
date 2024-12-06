; 
; PROBLEM:
; 
; Consider designing the system for controlling a New Year's Eve
; display. Design a data definition to represent the current state 
; of the countdown, which falls into one of three categories: 
; 
;  - not yet started
;  - from 10 to 1 seconds before midnight
;  - complete (Happy New Year!)
; 


;; Countdown is one of:
;;  - false
;;  - Natural[1, 10]
;;  - "complete"
;; interp. the current state of the countdown:
;;  false           means countdown has not yet started
;;  Natural[1, 10]  means countdown is running and how many seconds left
;;  "complete"      means countdown is over

(define CD1 false)
(define CD2 1)
(define CD3 10)
(define CD4 "complete")

#;
(define (fn-for-countdown cd)
  (cond [(false? cd) (...)]
        [(number? cd) (... cd)]
        [else (...)]))

;; Template rules used:
;;  - one of: 3 cases:
;;  - atomic distinct: false
;;  - atomic non-distinct: Natural[1, 10]
;;  - atomic distinct: "complete"
