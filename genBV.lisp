(setf bvs nil)	;initialize boolean variable list

(defun lookupbv (tag)
	(rassoc tag bvs)
)

(defun newbv(tag)
	(cond
		((null (lookupbv tag)) (setf bvs (acons (gensym) tag bvs)))
		(t nil)
	)
)

