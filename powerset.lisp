(defun powerset (lst)
	(if lst 
		(mapcan 
			(lambda (el) (list (cons (car lst) el) el))
			(powerset (cdr lst))
		)
		'(())
	)
)