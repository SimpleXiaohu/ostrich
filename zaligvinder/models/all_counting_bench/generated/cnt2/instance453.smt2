;test regex ^sha256[:$][0-9]+[:$][a-z0-9\/+]+[:$][a-z0-9\/+]{32,128}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "256") (re.++ (re.union (str.to_re ":") (str.to_re "$")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.union (str.to_re ":") (str.to_re "$")) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (str.to_re "+"))))) (re.++ (re.union (str.to_re ":") (str.to_re "$")) ((_ re.loop 32 128) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (str.to_re "+"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)