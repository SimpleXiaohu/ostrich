;test regex $E^3_{112}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (str.to_re "E")) (re.++ (str.to_re "") (re.++ (str.to_re "3") ((_ re.loop 112 112) (str.to_re "_"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)