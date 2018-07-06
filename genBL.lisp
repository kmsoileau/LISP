(setf bls nil)	;initialize boolean literal list

(defun lookupbl (tag)
	(rassoc tag bls)
)

(defun newbl(tag)
	(cond
		((null (lookupbl tag)) (setf bls (acons (gensym) tag bls)))
		(t nil)
	)
)

(defun setbv(bltag bvtag)
	(setf (get (lookupbl bltag) 'bv) bvtag)
)

