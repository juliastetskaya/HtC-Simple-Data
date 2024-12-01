; 
; PROBLEM:
; 
; DESIGN function that consumes a string and determines whether its length is
; less than 5.  Follow the HtDF recipe and leave behind commented out versions 
; of the stub and template.
;

;; String -> Boolean
;; Determine whether given string length is less than 5
(check-expect (less-than-5? "Hello!") false)
(check-expect (less-than-5? "Hi!") true)
(check-expect (less-than-5? " ") true)

;(define (less-than-5? str) false)    ;; This is the stub

;(define (less-than-5? str)           ;; This is the template
;  (... str))

(define (less-than-5? str)
  (< (string-length str)
     5))
