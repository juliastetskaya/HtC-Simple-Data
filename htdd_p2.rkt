;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You are assigned to develop a system that will classify 
; buildings in downtown Vancouver based on how old they are. 
; According to city guidelines, there are three different classification levels:
; new, old, and heritage.
; 
; Design a data definition to represent these classification levels. 
; Call it BuildingStatus.
; 


;; BuildingStatus is one of:
;;  - "new"
;;  - "old"
;;  - "heritage"
;; interp. classification of a building based on age
;; <examples are redundant for enumerations>

#;
(define (fn-for-building-status s)
  (cond [(string=? "old" bs) (...)]
        [(string=? "new" bs) (...)]
        [(string=? "heritage" bs) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "new"
;;  - atomic distinct: "old"
;;  - atomic distinct: "heritage"


;; =================
;; Functions:

; 
; PROBLEM B:
; 
; The city wants to demolish all buildings classified as "old". 
; You are hired to design a function called demolish? 
; that determines whether a building should be torn down or not.
; 


;; BuildingStatus -> Boolean
;; Produce true if the building is old
(check-expect (demolish? "old") true)
(check-expect (demolish? "new") false)
(check-expect (demolish? "heritage") false)

;(define (demolish? bs) false)        ;; This is the stub

;<use template from BuildingStatus>

(define (demolish? bs)
  (cond [(string=? "old" bs) true]
        [(string=? "new" bs) false]
        [(string=? "heritage" bs) false]))

