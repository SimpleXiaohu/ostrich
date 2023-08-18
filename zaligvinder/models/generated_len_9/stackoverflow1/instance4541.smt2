;test regex (?:[\\ud800-\\udbff][\\udc00-\\udfff]|.){0,6}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 0 6) (re.union (re.++ (re.union (str.to_re "\\") (re.union (str.to_re "u") (re.union (str.to_re "d") (re.union (re.range "800" "\\") (re.union (str.to_re "u") (re.union (str.to_re "d") (re.union (str.to_re "b") (re.union (str.to_re "f") (str.to_re "f"))))))))) (re.union (str.to_re "\\") (re.union (str.to_re "u") (re.union (str.to_re "d") (re.union (str.to_re "c") (re.union (re.range "00" "\\") (re.union (str.to_re "u") (re.union (str.to_re "d") (re.union (str.to_re "f") (re.union (str.to_re "f") (str.to_re "f"))))))))))) (re.diff re.allchar (str.to_re "\n"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)