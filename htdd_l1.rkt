; 
; PROBLEM:
; 
; Imagine that you are designing a program that, among other things, 
; has information about the names of cities in its problem domain.
; 
; Design a data definition to represent the name of a city. 
;    


;; CityName is String
;; interp. the name of a city

(define CN1 "Moscow")
(define CN2 "New York")

#;
(define (fn-for-city-name cn)
  (... cn))

;; Template rules used:
;;  - atomic non distinct: String
