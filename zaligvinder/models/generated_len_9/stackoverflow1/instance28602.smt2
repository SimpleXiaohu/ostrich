;test regex (^|\D)((\d{6})|(\d{8}))($|\D)/g
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (str.to_re "") (re.diff re.allchar (re.range "0" "9"))) (re.++ (str.to_re "/") (str.to_re "g")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)