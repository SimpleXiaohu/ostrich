;test regex (?:\G,\h*|^sum\(\{foo,\h*c\[)(\d{4})(\]\}\))?
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "G") (re.++ (str.to_re ",") (re.* (str.to_re "h")))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "(") (re.++ (str.to_re "{") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (str.to_re "o"))))))))) (re.++ (str.to_re ",") (re.++ (re.* (str.to_re "h")) (re.++ (str.to_re "c") (str.to_re "[")))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (str.to_re "]") (re.++ (str.to_re "}") (str.to_re ")"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)