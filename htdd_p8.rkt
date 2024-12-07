; 
; PROBLEM:
; 
; Given the data definition below, design a function named left 
; that consumes a compass direction and produces the direction 
; that results from making a 90 degree left turn.
; 


;; =================
;; Data definitions:

;; Direction is one of:
;;  - "N"
;;  - "S"
;;  - "E"
;;  - "W"
;; interp. a compass direction that a player can be facing
;; <examples are redundant for enumerations>
#;
(define (fn-for-direction d)
  (cond [(string=? d "N") (...)]
        [(string=? d "S") (...)]
        [(string=? d "E") (...)]
        [(string=? d "W") (...)]))

;; Template rules used:
;; - one of: 4 cases
;; - atomic distinct: "N"
;; - atomic distinct: "S"
;; - atomic distinct: "E"
;; - atomic distinct: "W"


;; =================
;; Functions:

;; Direction -> Direction
;; Produce the direction that results from making a 90 degree left turn from the given direction
(check-expect (direction "N") "W")
(check-expect (direction "W") "S")
(check-expect (direction "S") "E")
(check-expect (direction "E") "N")

;(define (direction d) "N")   ;; This is the stub

;<use template from Direction>
(define (direction d)
  (cond [(string=? d "N") "W"]
        [(string=? d "S") "E"]
        [(string=? d "E") "N"]
        [(string=? d "W") "S"]))
