; 
; PROBLEM:
; 
; Design an animation of a traffic light. 
; 
; Your program should show a traffic light that is red, then green, 
; then yellow, then red etc. For this program, your changing world 
; state data definition should be an enumeration.
; 
; To make your lights change at a reasonable speed, you can use the 
; rate option to on-tick. If you say, for example, (on-tick next-color 1) 
; then big-bang will wait 1 second between calls to next-color.
; 
; Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
; Note: If you want to design a slightly simpler version of the program,
; you can modify it to display a single circle that changes color, rather
; than three stacked circles. 


(require 2htdp/image)
(require 2htdp/universe)

;; A traffic light that is red, then green, then yellow, then red etc.

;; ======================
;; Constants:
(define RADIUS 20) ; of each light
(define SPACING 6) ; space between and beside lights

(define BACKGROUND (rectangle (+ (* 2 SPACING) (* 2 RADIUS))
                              (+ (* 4 SPACING) (* 6 RADIUS))
                              "solid"
                              "black"))

(define SPACE (square SPACING "solid" "black"))

(define RED-TL
  (overlay (above SPACE
                  (circle RADIUS "solid"   "red")
                  SPACE
                  (circle RADIUS "outline" "yellow")
                  SPACE
                  (circle RADIUS "outline" "green")
                  SPACE)
           BACKGROUND))

(define YELLOW-TL
  (overlay (above SPACE
                  (circle RADIUS "outline" "red")
                  SPACE
                  (circle RADIUS "solid"   "yellow")
                  SPACE
                  (circle RADIUS "outline" "green")
                  SPACE)
           BACKGROUND))

(define GREEN-TL
  (overlay (above SPACE
                  (circle RADIUS "outline" "red")
                  SPACE
                  (circle RADIUS "outline" "yellow")
                  SPACE
                  (circle RADIUS "solid"   "green")
                  SPACE)
           BACKGROUND))


;; ==========================
;; Data definitions:

;; LightState is one of:
;;  - "red"
;;  - "green"
;;  - "yellow"
;; interp. the color of a traffic light

#;
(define (fn-for-light-state ls)
  (cond [(string=? "red" ls) (...)]
        [(string=? "green" ls) (...)]
        [(string=? "yellow" ls) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "red"
;;  - atomic distinct: "yellow"
;;  - atomic distinct: "green"



;; ==================================
;; Functions:

;; LightState -> LightState
;; called to run the animation; start the world with (main "red")
;;
(define (main ls)
  (big-bang ls                         ; LightState
    (on-tick advance-light-state 1)    ; LightState -> LightState
    (on-draw render-light-state)))     ; LightState -> Image



;; LightState -> LightState
;; produce the next traffic state
(check-expect (advance-light-state "red") "green")
(check-expect (advance-light-state "green") "yellow")
(check-expect (advance-light-state "yellow") "red")

;(define (advance-light-state ls) ls)

;<use template from LightState>

(define (advance-light-state ls)
  (cond [(string=? "red" ls) "green"]
        [(string=? "green" ls) "yellow"]
        [(string=? "yellow" ls) "red"]))


;; LightState -> Image
;; render the appropriate traffic light image
(check-expect (render-light-state "red") RED-TL)
(check-expect (render-light-state "green") GREEN-TL)
(check-expect (render-light-state "yellow") YELLOW-TL)

;(define (render-light-state ls) BACKGROUND)

;<use template from LightState>

(define (render-light-state ls)
  (cond [(string=? "red" ls) RED-TL]
        [(string=? "green" ls) GREEN-TL]
        [(string=? "yellow" ls) YELLOW-TL]))
