;test regex [I]{1}[A-Z]{1}.*\.cs$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 1) (str.to_re "I")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (str.to_re "c") (str.to_re "s")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)