;test regex ^011 \(13[124678]\) \d{10}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "011") (re.++ (str.to_re " ") (re.++ (str.to_re "(") (re.++ (str.to_re "13") (re.++ (str.to_re "124678") (re.++ (str.to_re ")") (re.++ (str.to_re " ") ((_ re.loop 10 10) (re.range "0" "9")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)