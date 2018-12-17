(defun count-and-extract (x lst)
	(if (null lst) 
		'(0)
		(let ((subsequent-call (count-and-extract x (cdr lst))))
			(if (equal x (car lst))
				(cons (+ 1 (car subsequent-call)) (cdr subsequent-call))
				(cons (car subsequent-call) (cons (car lst) (cdr subsequent-call)))))))

(defun frequences (lst)
	(if (null lst)
		()
		(let* ((target (car lst)) (subsequent-call (count-and-extract target lst)))
			(cons (list target (car subsequent-call)) (frequences (cdr subsequent-call))))))

(assert (equal (frequences '(A B A B C C C D)) '((A 2) (B 2) (C 3) (D 1))))