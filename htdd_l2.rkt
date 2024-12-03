; 
; PROBLEM:
; 
; Using the CityName data definition below design a function
; that produces true if the given city is the best in the world. 
; (You are free to decide for yourself which is the best city 
; in the world.)
; 

;; Data definitions:

;; CityName is String
;; interp. the name of a city
(define CN1 "Boston")
(define CN2 "Vancouver")

#;
(define (fn-for-city-name cn)
  (... cn))

;; Template rules used:
;;   atomic non-distinct: String

;; Functions:
;; CityName -> Boolean
;; produce true if the city name is Moscow, otherwise - false
(check-expect (best? "Moscow") true)
(check-expect (best? "New York") false)

;(define (best? cn) false)   ;; This is the stub

;<use template from CityName>
;(define (best? cn)          ;; This is the template
;  (... cn))

(define (best? cn)
  (string=? cn "Moscow"))
