;;;
(ql:quickload "cffi")
(cffi::load-foreign-library  "./librs232.so")
(load "rs232.lisp")

(defun test (fn msg)
  (let ((com (rs232_open fn))
        (arr (make-array 100)))
    (format t "~a~%" com)
    (format t "~a~%" arr)
    ;(rs232_send com msg (length msg))
    (rs232_recv com arr 100)
    (format t "~a~%" msg)
    (rs232_close com)))

