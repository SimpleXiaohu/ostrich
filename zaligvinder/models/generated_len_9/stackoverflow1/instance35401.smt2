;test regex ^(A|P)([0-9]){10}(.+)(M|F)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "A") (str.to_re "P")) (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.union (str.to_re "M") (str.to_re "F")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)