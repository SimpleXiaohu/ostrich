;test regex ^(ssh-[a-z]{3}) ([0-9]{3,4}) ([0-9a-f]{2}:){15}[0-9a-f]{2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "-") ((_ re.loop 3 3) (re.range "a" "z")))))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 15 15) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)