;test regex ^STEAM_0:[01]:[0-9]{7,8}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "A") (re.++ (str.to_re "M") (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re ":") (re.++ (str.to_re "01") (re.++ (str.to_re ":") ((_ re.loop 7 8) (re.range "0" "9"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)