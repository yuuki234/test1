;; -*- coding: euc-jp -*-
;; Auxiliary test for string <-> uvector conversion  (EUC-JP)

(test "mb string->u8vector" '#u8(#xa4 #xa2 #xa4 #xa4 #xa4 #xa6)
      (lambda ()
        (string->u8vector "������")))
(test "mb string->u8vector (start)" '#u8(#xa4 #xa4 #xa4 #xa6)
      (lambda ()
        (string->u8vector "������" 1)))
(test "mb string->u8vector (start,end)" '#u8(#xa4 #xa2 #xa4 #xa4)
      (lambda ()
        (string->u8vector "������" 0 2)))
(test "mb string->u8vector (start,end)" 'error
      (lambda ()
        (with-error-handler
            (^e 'error)
          (lambda ()
            (string->u8vector "������" 0 4)))))

(test "mb u8vector->string" "������"
      (lambda ()
        (u8vector->string '#u8(#xa4 #xa2 #xa4 #xa4 #xa4 #xa6))))
(test "mb u8vector->string (incomplete)" #*"\xa4\xa2\xa4"
      (lambda ()
        (u8vector->string '#u8(#xa4 #xa2 #xa4 #xa4 #xa4 #xa6) 0 3)))

(test "mb string->u32vector" '#u32(#xa4a2 #x41 #xa4a4 #x42)
      (lambda ()
        (string->u32vector "��A��B")))
(test "mb string->u32vector (start)" '#u32(#x41 #xa4a4 #x42)
      (lambda ()
        (string->u32vector "��A��B" 1)))
(test "mb string->u32vector (start, end)" '#u32(#xa4a2 #x41 #xa4a4)
      (lambda ()
        (string->u32vector "��A��B" 0 3)))

(test "mb u32vector->string" "��A��B"
      (lambda ()
        (u32vector->string '#u32(#xa4a2 #x41 #xa4a4 #x42))))
(test "mb u32vector->string (start, end)" "A��"
      (lambda ()
        (u32vector->string '#u32(#xa4a2 #x41 #xa4a4 #x42) 1 3)))


