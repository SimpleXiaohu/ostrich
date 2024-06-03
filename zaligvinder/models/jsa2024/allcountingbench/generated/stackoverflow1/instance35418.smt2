;test regex ([\\d]){2}([NnSs]){1}[(\\d)]{3}([EeWw]){1}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "\\") (str.to_re "d"))) (re.++ ((_ re.loop 1 1) (re.union (str.to_re "N") (re.union (str.to_re "n") (re.union (str.to_re "S") (str.to_re "s"))))) (re.++ ((_ re.loop 3 3) (re.union (str.to_re "(") (re.union (str.to_re "\\") (re.union (str.to_re "d") (str.to_re ")"))))) ((_ re.loop 1 1) (re.union (str.to_re "E") (re.union (str.to_re "e") (re.union (str.to_re "W") (str.to_re "w"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)