;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; You work in the Human Resources department at a ski lodge. 
; Because the lodge is busier at certain times of year, 
; the number of employees fluctuates. 
; There are always more than 10, but the maximum is 50.
; 
; Design a data definition to represent the number of ski lodge employees. 
; Call it Employees.
; 


;; Employees is Natural(10, 50]
;; interp. the number of employees in the lodge

(define EMP1 11)  ;min
(define EMP2 25)
(define EMP3 50)  ;max

;#
(define (fn-for-employee-num emp)
  (... emp))


;; Template rules used:
;;  - atomic non-distinct: Natural(10, 50]


;; =================
;; Functions:

; 
; PROBLEM B:
; 
; Now design a function that will calculate the total payroll for the quarter.
; Each employee is paid $1,500 per quarter. Call it calculate-payroll.
; 


;; Employees - Natural
;; Calculate the total payroll of all employees for the quarter based on $1,500/employee
(check-expect (calculate-payroll EMP1) 16500)
(check-expect (calculate-payroll EMP2) 37500)
(check-expect (calculate-payroll EMP3) 75000)

;(define (calculate-payroll emp) 0)       ;; This is the stub

;<use template from Employees>

(define (calculate-payroll emp)
  (* emp 1500))

