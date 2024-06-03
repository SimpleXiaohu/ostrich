;test regex (REF)(.*?\D)?(\d{8})(\W|$)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "E") (str.to_re "F"))) (re.++ (re.opt (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.diff re.allchar (re.range "0" "9")))) (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.union (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (str.to_re "")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)