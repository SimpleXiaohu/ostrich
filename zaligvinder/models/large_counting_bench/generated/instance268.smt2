;test regex ^[a-f0-9]{64}:[a-f0-9]{32}:[0-9]{5}:[a-f0-9]{608}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 64 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 608 608) (re.union (re.range "a" "f") (re.range "0" "9")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)