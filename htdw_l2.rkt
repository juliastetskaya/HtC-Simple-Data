
; 
; PROBLEM:
; 
; Below is a world program in which a cat walks across the screen
; from left to right. Pressing the space key resets the cat to the
; left edge of the screen.
; 
; Revise this program so that when the mouse is clicked in the window 
; the cat moves to the mouse's current x position. You will need to
; consult the DrRacket help desk to learn about the four arguments to
; big-bang on-mouse handlers.
; 

(require 2htdp/image)
(require 2htdp/universe)

;; A cat that walks from left to right across the screen.

;; =======================
;; Constants:
(define WIDTH 600)
(define HEIGHT 400)

(define CTR-Y (/ HEIGHT 2))

(define SPEED 3)

(define MTS (empty-scene WIDTH HEIGHT))

(define CAT-IMG "put your image of the cat here")


;; =========================
;; Data definitions:

;; Cat is Number
;; interp. x position of the cat in screen coordinates
(define C1 0)             ; left edge
(define C2 (/ WIDTH 2))   ; middle
(define C3 WIDTH)         ; right edge

#;
(define (fn-for-cat c)
  (... c))

;; Template rules used:
;;  - atomic non-distinct: Number


;; ==========================
;; Functions:

;; Cat -> Cat
;; start the world with (main 0)
;;
(define (main c)
  (big-bang c                 ; Cat
    (on-tick advance-cat)     ; Cat -> Cat
    (on-draw render)          ; Cat -> Image
    (on-key handle-key)       ; Cat KeyEvent -> Cat
    (on-mouse handle-mouse))) ; Cat Integer Integer MouseEvent -> Cat

;; Cat -> Cat
;; produce the next cat by advancing it SPEED pixel(s) to right
(check-expect (advance-cat 3) (+ 3 SPEED))

;(define (advance-cat c) 0)  ;this is the stub

; <use template from Cat>

(define (advance-cat c)
  (+ c SPEED))


;; Cat -> Image
;; render the cat image at appropriate place on MTS 
(check-expect (render 4) (place-image CAT-IMG 4 CTR-Y MTS)) 
              
;(define (render c) MTS)    ;this is the stub

;<use template from Cat>

(define (render c)
  (place-image CAT-IMG c CTR-Y MTS)) 


;; Cat KeyEvent -> Cat
;; reset cat to left edge when space key is pressed
(check-expect (handle-key 10 " ")  0)
(check-expect (handle-key 10 "a") 10)
(check-expect (handle-key 0 " ")   0)
(check-expect (handle-key 0 "a")   0)

;(define (handle-key c ke) 0)  ; this is the stub

(define (handle-key c ke)
  (cond [(key=? ke " ") 0]
        [else c]))


;; Cat Integer Integer MouseEvent -> Cat
;; move cat to the mouse's current x position
(check-expect (handle-mouse 0 0 0 "button-down") 0)
(check-expect (handle-mouse 10 0 0 "button-down") 0)
(check-expect (handle-mouse 0 10 0 "button-down") 10)
(check-expect (handle-mouse 0 0 10 "button-down") 0)
(check-expect (handle-mouse 0 10 0 "button-up") 0)
(check-expect (handle-mouse 10 100 20 "button-down") 100)
(check-expect (handle-mouse 10 600 20 "button-down") 600)
(check-expect (handle-mouse 600 100 20 "button-down") 100)

;(define (handle-mouse c x-cord y-cord me) 0) ; this is the stub

(define (handle-mouse c x-cord y-cord me)
  (cond [(mouse=? me "button-down") x-cord]
        [else c]))
