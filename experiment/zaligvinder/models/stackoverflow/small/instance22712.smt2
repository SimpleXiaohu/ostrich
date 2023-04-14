;test regex (?:.*\n.*){2}^(?:.{7})(\w*\W)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 7 7) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)