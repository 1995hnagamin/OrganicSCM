(define (multiplying-affix n)
  (lambda args
    (cond
      ((null? args) n)
      ((procedure? (car args)) ((car args) n))
      (else (apply + (cons n args))))))

(define (multiplying-infix k)
  (lambda (n) (* k n)))

(define mono  (multiplying-affix 1))
(define un mono)
(define hen mono)
(define di    (multiplying-affix 2))
(define do- di)
(define tri   (multiplying-affix 3))
(define tetra (multiplying-affix 4))
(define penta (multiplying-affix 5))
(define hexa  (multiplying-affix 6))
(define hepta (multiplying-affix 7))
(define octa  (multiplying-affix 8))
(define nona  (multiplying-affix 9))

(define deca  10)
(define cosa  20)
(define conta (multiplying-infix 10))
(define cta   (multiplying-infix 100))
(define lia   (multiplying-infix 1000))
