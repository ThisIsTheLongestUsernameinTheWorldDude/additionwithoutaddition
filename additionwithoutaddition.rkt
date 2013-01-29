;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname additionwithoutaddition) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
;add-to-pi
;adds a given number to 3.14 without +
(check-expect (add 4 3) 7)

(define (counter n num)
  (cond 
    [(= n 0) num]
    [else (counter (sub1 n) (add1 num))]))
(define (add n num)
  (cond
   [(number? n) (counter n num)]
   [else "THIS IS NOT A NUMBER YOU FOOL"]))
