;test regex $minSize -match '^([0-9]{1,20})(b|kb|mb|gb|tb)$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "S") (re.++ (str.to_re "i") (re.++ (str.to_re "z") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 1 20) (re.range "0" "9")) (re.union (re.union (re.union (re.union (str.to_re "b") (re.++ (str.to_re "k") (str.to_re "b"))) (re.++ (str.to_re "m") (str.to_re "b"))) (re.++ (str.to_re "g") (str.to_re "b"))) (re.++ (str.to_re "t") (str.to_re "b")))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)