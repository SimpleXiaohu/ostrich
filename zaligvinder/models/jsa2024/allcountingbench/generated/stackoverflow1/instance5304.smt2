;test regex ^[A-Za-z\u00nn\u00nn\u00nn]{5,}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (re.union (str.to_re "n") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (re.union (str.to_re "n") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (str.to_re "n")))))))))))) ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (re.union (str.to_re "n") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (re.union (str.to_re "n") (re.union (str.to_re "\u{00}") (re.union (str.to_re "n") (str.to_re "n")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)