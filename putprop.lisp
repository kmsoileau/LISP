(defun putprop (object value property)
	(setf (get object property) value)
)