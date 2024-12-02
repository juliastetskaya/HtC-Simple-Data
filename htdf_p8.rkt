; 
; PROBLEM:
; 
; Use the How to Design Functions (HtDF) recipe to design a function that consumes a string, and adds "?" 
; to the end unless the string already ends in "?".
; 
; For this question, assume the string has length > 0. Follow the HtDF recipe and leave behind commented 
; out versions of the stub and template.
; 

;; String -> String
;; Add "?" to the eng of the given string.
(check-expect (ensure-question "How are you") "How are you?")
(check-expect (ensure-question "Why?") "Why?")

;(define (ensure-question str) str)     ;; This is the stub

;(define (ensure-question str)          ;; This is the template
;  (... str))

(define (ensure-question str)
  (if (string=? (substring str (- (string-length str) 1)) "?")
      str
      (string-append str "?")))
