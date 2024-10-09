; 
; PROBLEM:
; 
; DESIGN a function called yell that consumes strings like "hello" 
; and adds "!" to produce strings like "hello!".
; 
; Remember, when we say DESIGN, we mean follow the recipe.
; 
; Leave behind commented out versions of the stub and template.
; 

;; String -> String
;; Produce a new string with given string and exclamation mark.
(check-expect (yell "Hello") "Hello!")
(check-expect (yell "") "!")

;(define (yell str) "")  ; this is the stub

;(define (yell str)      ; this is the template
;  (... str))

(define (yell str)
  (string-append str "!"))
