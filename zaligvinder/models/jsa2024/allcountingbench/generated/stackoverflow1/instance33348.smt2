;test regex 555(\|.*?\|){12}(\d\d)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "555") (re.++ ((_ re.loop 12 12) (re.++ (str.to_re "|") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "|")))) (re.++ (re.range "0" "9") (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)