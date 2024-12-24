;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to help a teacher organize their next field trip. 
; On the trip, lunch must be provided for all students. For each student, track 
; their name, their grade (from 1 to 12), and whether or not they have allergies.
; 


(define-struct student (name grade allergies?))
;; Student is (make-student String Natural Boolean)
;; interp. a student with name, grade and allergy status
(define ST1 (make-student "John" 6 true))
(define ST2 (make-student "Eva" 4 false))
(define ST3 (make-student "Mike" 10 true))
(define ST4 (make-student "Alex" 7 false))

(define (fn-for-student st)
  (... (student-name st)            ; String
       (student-grade st)           ; Natural[1, 12]
       (student-allergies? st)))    ; Boolean

;; Template rules used:
;;  - Compound: 3 fields

;; =================
;; Functions:

; 
; PROBLEM B:
; 
; To plan for the field trip, if students are in grade 6 or below, the teacher 
; is responsible for keeping track of their allergies. If a student has allergies, 
; and is in a qualifying grade, their name should be added to a special list. 
; Design a function to produce true if a student name should be added to this list.


;; Student -> Boolean
;; Produce true if a student is in grade 6 or below and has allergy
(check-expect (to-list? ST1) true)
(check-expect (to-list? ST2) false)
(check-expect (to-list? ST3) false)
(check-expect (to-list? ST4) false)

;(define (to-list? st) true)   ; this is the stub

;<use template from Student>

(define (to-list? st)
  (and (<= (student-grade st) 6) (student-allergies? st)))
