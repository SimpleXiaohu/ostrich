;test regex SHA256 checksum: ([0-9a-f]{64})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "H") (re.++ (str.to_re "A") (re.++ (str.to_re "256") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re " ") ((_ re.loop 64 64) (re.union (re.range "0" "9") (re.range "a" "f"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)