;test regex '\d{1,2}:\d{2} [AP]M'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "A") (str.to_re "P")) (re.++ (str.to_re "M") (str.to_re "\u{27}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)