;test regex (^((et)|(Et)|(ET)).*)|(.{3}([eEtT]$))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "e") (str.to_re "t")) (re.++ (str.to_re "E") (str.to_re "t"))) (re.++ (str.to_re "E") (str.to_re "T"))) (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "e") (re.union (str.to_re "E") (re.union (str.to_re "t") (str.to_re "T")))) (str.to_re ""))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)