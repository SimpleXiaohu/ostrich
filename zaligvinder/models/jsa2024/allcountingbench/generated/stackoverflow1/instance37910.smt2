;test regex '#fff000'.match(/^#[a-z0-9]{6}$/i);//["#fff000"]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "#") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "000") (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (str.to_re "#") ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i")))) (re.++ (str.to_re ";") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.union (str.to_re "\u{22}") (re.union (str.to_re "#") (re.union (str.to_re "f") (re.union (str.to_re "f") (re.union (str.to_re "f") (re.union (str.to_re "000") (str.to_re "\u{22}"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)