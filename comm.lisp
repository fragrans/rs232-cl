;;;
(ql:quickload "cffi")
(cffi::load-foreign-library  "librs232.so")
(load "rs232.lisp")
