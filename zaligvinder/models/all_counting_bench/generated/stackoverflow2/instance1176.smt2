;test regex ^(http://|https://)(([a-z0-9]([-a-z0-9]*[a-z0-9]+)?){1,63}\.)+[a-z]{2,6}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (re.+ (re.++ ((_ re.loop 1 63) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.opt (re.++ (re.* (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))) (str.to_re "."))) ((_ re.loop 2 6) (re.range "a" "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)