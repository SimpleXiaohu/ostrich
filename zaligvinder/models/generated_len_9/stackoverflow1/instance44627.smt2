;test regex ([^\W\_](.+?)[^\W\_])|([a-z0-9]{1,2})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.inter (re.diff re.allchar (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.diff re.allchar (str.to_re "_"))) (re.++ (re.+? (re.diff re.allchar (str.to_re "\n"))) (re.inter (re.diff re.allchar (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) (re.diff re.allchar (str.to_re "_"))))) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)