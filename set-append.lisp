(defun set-append (object set)
	(cond
		((null set) (list object))							;=> (object)
		((not (member object set)) (cons object set))		;Add object to set if not already a member
		(t set)												;Already a member, do nothing
	)
)