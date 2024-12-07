;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are designing a program to track a rocket's journey as it descends 
; 100 kilometers to Earth. You are only interested in the descent from 
; 100 kilometers to touchdown. Once the rocket has landed it is done.
; 
; Design a data definition to represent the rocket's remaining descent. 
; Call it RocketDescent.
; 


;; RocketDescent is one of:
;;  - Natural(0, 100]
;;  - false
;; interp. false if rocket's descent has ended, otherwise number of kilometers left to Earth

(define RD1     1)
(define RD2    50)
(define RD3   100)
(define RD4 false)

#;
(define (fn-for-rocket-descent rd)
  (cond [(number? rd) (... rd)]
        [else (...)]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: false
;;  - atomic non-distinct: Natural(0, 100]


;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Design a function that will output the rocket's remaining descent distance 
; in a short string that can be broadcast on Twitter. 
; When the descent is over, the message should be "The rocket has landed!".
; Call your function rocket-descent-to-msg.
; 


;; RocketDescent -> String
;; Output a Twitter update on rocket's descent distance
(check-expect (rocket-descent-to-msg RD1) "Altitude is 1 kms.")
(check-expect (rocket-descent-to-msg RD2) "Altitude is 50 kms.")
(check-expect (rocket-descent-to-msg RD3) "Altitude is 100 kms.")
(check-expect (rocket-descent-to-msg RD4) "The rocket has landed!")

;(define (rocket-descent-to-msg rd) "")   ;; This is the stub

;<use template from Countdown>
(define (rocket-descent-to-msg rd)
  (cond [(number? rd)
         (string-append "Altitude is " (number->string rd) " kms.")]
        [else "The rocket has landed!"]))
