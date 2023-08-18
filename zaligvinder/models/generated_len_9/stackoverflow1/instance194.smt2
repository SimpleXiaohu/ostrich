;test regex [aCci].{4,8}\
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (re.union (str.to_re "C") (re.union (str.to_re "c") (str.to_re "i")))) (re.++ ((_ re.loop 4 8) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)