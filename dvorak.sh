#!/usr/local/bin/ecl -shell

(defvar *qwerty-2-dvorak*
  (make-hash-table :test 'equal))

(defun list-2-hash (keys vals)
  (map nil (lambda (k v) (setf (gethash k *qwerty-2-dvorak*) v)) keys vals))

(list-2-hash "qwertyuiop[]asdfghjkl;'zxcvbnm,./" "',.pyfgcrl/=aoeuidhtns-;qjkxbmwvz")

(defun qw-2-dv (str)
  (map 'string (lambda (ch) (let ((v (gethash ch *qwerty-2-dvorak*))) (if v v ch))) str))

;;;(map nil (lambda (s) (format t "~a~%" (qw-2-dv s))) '())

(let ((stream (open "l.0" :direction :input)))
  (do ((str (read-line stream nil nil nil) (read-line stream nil nil nil)))
      ((null str) (close stream))
    (format t "~a~%" (qw-2-dv str))))
      
