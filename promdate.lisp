;;;(scalarmult .4 '(.3 .2 .7)) => (.12 .08 .28)
(defun scalarmult (x lst)
	(mapcar (lambda (li) (* x li)
	) lst)
)

;;; Given a list lst of numbers and a positive integer n, 
;;; returns the sum of all possible products of n members 
;;; of lst. For example,
;;; (subset-product-sum 2 '(x1 x2 x3)) => x1*x2+x1*x3+x2*x3
(defun subset-product-sum (n lst)
	(cond
		((< n 0) 0)
		((= n 0) 1)
		((< (length lst) n) 0)
		(t 
			(+ 
				(subset-product-sum n (cdr lst)) 
				(* (car lst) (subset-product-sum (1- n) (cdr lst)))
			)
		)
	)
)

(defun term (p n plist)
	(cond
		((< n 0) 0)
		((null plist) 0)
		(t ( * (/ (* p (subset-product-sum n plist)) (1+ n)) (expt -1 n)))
	)
)

(defun term-sum (p plist)
	(loop for i from 0 to (length plist)
		do 
			(print (term p i plist)))
)

