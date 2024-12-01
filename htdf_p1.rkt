; 
; PROBLEM:
; 
; Design a function that generates a summoning charm. For example: 
; 
;    (summon "Firebolt") should produce "accio Firebolt"
;    (summon "portkey")  should produce "accio portkey"
;    (summon "broom")    should produce "accio broom"
;    
; See http://harrypotter.wikia.com/wiki/Summoning_Charm for background on
; summoning charms.
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Follow the HtDF recipe and leave behind commented out versions of the stub and template. 
; 


;; String -> String
;; Add 'accio' to the given string
(check-expect (summon "Firebolt") "accio Firebolt")
(check-expect (summon "portkey") "accio portkey")
(check-expect (summon "broom") "accio broom")

;(define (summon str) "")    ;; This is the stub

;(define (summon str)        ;; This is the template
;  (... str))

(define (summon str)
  (string-append "accio" " " str))
