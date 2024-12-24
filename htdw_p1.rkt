; 
; PROBLEM:
; 
; Design an animation of a simple countdown. 
; 
; Your program should display a simple countdown, that starts at ten, and
; decreases by one each clock tick until it reaches zero, and stays there.
; 
; To make your countdown progress at a reasonable speed, you can use the 
; rate option to on-tick. If you say, for example, 
; (on-tick advance-countdown 1) then big-bang will wait 1 second between 
; calls to advance-countdown.
; 
; Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
; Once you are finished the simple version of the program, you can improve
; it by reseting the countdown to ten when you press the spacebar.
; 


(require 2htdp/image)
(require 2htdp/universe)

;; Countdown from ten to zero.

;; =======================
;; Constants:
(define WIDTH 600)
(define HEIGHT 400)

(define CTR-X (/ WIDTH 2))
(define CTR-Y (/ HEIGHT 2))

(define TEXT-SIZE 20)
(define TEXT-COLOR "black")

(define SPEED 1)

(define MTS (empty-scene WIDTH HEIGHT))


;; =========================
;; Data definitions:

;; Countdown is Natural
;; interp. number from 10 to 0
(define CD1 10)         ;countdown hasn't started
(define CD2  5)         ;countdown in progress
(define CD3  0)         ;countdown finished

#;
(define (fn-for-countdown cd)
  (... cd))

;; Template rules used:
;;  - atomic non-distinct: Natural[0, 10]

;; ==========================
;; Functions:

;; Countdown -> Countdown
;; called to run the animation; start the world with (main 10)
;;
(define (main cd)
  (big-bang cd                              ; Countdown
    (on-tick advance-countdown SPEED)       ; Countdown -> Countdown
    (on-draw render-countdown)              ; Countdown -> Image
    (on-key handle-key)))                   ; Countdown KeyEvent -> Countdown


;; Countdown -> Countdown
;; produce the next countdown by descresing by one until zero
(check-expect (advance-countdown CD1) 9)
(check-expect (advance-countdown CD2) 4)
(check-expect (advance-countdown CD3) 0)

;(define (advance-countdown c) 0)  ;this is the stub

; <use template from Countdown>

(define (advance-countdown cd)
  (if (= cd 0)
      0
      (- cd 1)))


;; Countdown -> Image
;; render the countdown image at the center of MTS
(check-expect (render-countdown CD1)
              (place-image (text (number->string 10) TEXT-SIZE TEXT-COLOR) CTR-X CTR-Y MTS))

;(define (render cd) MTS)

(define (render-countdown cd)
  (place-image (text (number->string cd) TEXT-SIZE TEXT-COLOR)
               CTR-X
               CTR-Y
               MTS))


;; Countdown KeyEvent -> Countdown
;; reset countdown to 10 when space key is pressed
(check-expect (handle-key 10 " ") 10)
(check-expect (handle-key 10 "a") 10)
(check-expect (handle-key 5 " ")  10)
(check-expect (handle-key 5 "a")   5)

;(define (handle-key cd ke) 0)   ;this is the stub

(define (handle-key cd ke)
  (cond [(key=? ke " ") 10]
        [else cd]))
