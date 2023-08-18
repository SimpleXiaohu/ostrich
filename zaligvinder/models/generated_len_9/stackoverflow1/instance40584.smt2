;test regex ^([A-z].*)(<[A-Z]{4}>)?(\r?)([A-z].*)(\r?)([A-z].*)(\r?){1}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ (re.range "A" "z") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.opt (re.++ (str.to_re "<") (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (str.to_re ">")))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (re.++ (re.range "A" "z") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (re.++ (re.range "A" "z") (re.* (re.diff re.allchar (str.to_re "\n")))) ((_ re.loop 1 1) (re.opt (str.to_re "\u{0d}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)