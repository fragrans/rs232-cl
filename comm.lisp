;;;
(ql:quickload "cffi")
(cffi::load-foreign-library  "./librs232.so")
(load "rs232.lisp")

(defun test (fn)
  (let* ((com (rs232_open fn))
         (str (cffi::with-foreign-pointer-as-string (str 100)
                (rs232_recv com str 100))))
    (format t "~a/~a~%" com str)
    (rs232_close com)))

