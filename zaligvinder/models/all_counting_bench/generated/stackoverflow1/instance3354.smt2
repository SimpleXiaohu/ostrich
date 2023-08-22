;test regex [^\\d]*([0-9]+[\\s]*[.,]{0,1}[\\s]*[0-9]*).*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "d")))) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.++ (re.* (re.union (str.to_re "\\") (str.to_re "s"))) (re.++ ((_ re.loop 0 1) (re.union (str.to_re ".") (str.to_re ","))) (re.++ (re.* (re.union (str.to_re "\\") (str.to_re "s"))) (re.* (re.range "0" "9")))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)