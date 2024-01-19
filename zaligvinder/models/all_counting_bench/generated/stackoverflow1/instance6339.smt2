;test regex ([@|#]\\w){0,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (re.union (str.to_re "@") (re.union (str.to_re "|") (str.to_re "#"))) (re.++ (str.to_re "\\") (str.to_re "w")))) ((_ re.loop 0 0) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "|") (str.to_re "#"))) (re.++ (str.to_re "\\") (str.to_re "w")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)