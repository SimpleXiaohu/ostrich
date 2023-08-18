;test regex [A-Z]{5}_(.*)_(.*)\.log
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "A" "Z")) (re.++ (str.to_re "_") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "_") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (str.to_re "g")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)