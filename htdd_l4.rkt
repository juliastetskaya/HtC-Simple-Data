; 
; PROBLEM:
; 
; As part of designing a system to keep track of student grades, you
; are asked to design a data definition to represent the letter grade 
; in a course, which is one of A, B or C.
;   


;; LetterGrade is one of:
;;  - "A"
;;  - "B"
;;  - "C"
;; interp. the letter grade in a course
;; <examples are redundant for enumerations>

#;
(define (fn-for-letter-grade lg)
  (cond [(string=? "A" lg) (...)]
        [(string=? "B" lg) (...)]
        [(string=? "C" lg) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "A"
;;  - atomic distinct: "B"
;;  - atomic distinct: "C"
