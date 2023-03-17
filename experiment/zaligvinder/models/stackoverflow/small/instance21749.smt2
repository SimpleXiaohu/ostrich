;test regex ((^[a-zA-Z0-9 -~]+?):\n{2}([a-zA-Z0-9 -~]+?))\n
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.range " " "~")))))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (str.to_re "\u{0a}")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.range " " "~")))))))) (str.to_re "\u{0a}"))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)