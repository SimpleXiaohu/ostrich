;test regex ^[-+]?[0-9](\.[2|5|7]{1}[5|0]{1})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "2") (re.union (str.to_re "|") (re.union (str.to_re "5") (re.union (str.to_re "|") (str.to_re "7")))))) ((_ re.loop 1 1) (re.union (str.to_re "5") (re.union (str.to_re "|") (str.to_re "0")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)