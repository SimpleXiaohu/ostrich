;test regex ^[cdefgab]{1}(, [cdefgab]{1})*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "a") (str.to_re "b")))))))) (re.* (re.++ (str.to_re ",") (re.++ (str.to_re " ") ((_ re.loop 1 1) (re.union (str.to_re "c") (re.union (str.to_re "d") (re.union (str.to_re "e") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "a") (str.to_re "b")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)