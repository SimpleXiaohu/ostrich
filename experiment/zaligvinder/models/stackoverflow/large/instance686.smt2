;test regex ^[0-9A-Za-z!@.,;:'"?-]{1,100}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 100) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (str.to_re "!") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "\u{27}") (re.union (str.to_re "\u{22}") (re.union (str.to_re "?") (str.to_re "-")))))))))))))) (str.to_re "z")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)