;test regex ^(?:-|-?(?:\d|[1-9]\d?|1(?:[0-7]\d?)?|1(?:80?)?)(?:\.[0-9]{0,6})?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (str.to_re "-") (re.++ (re.opt (str.to_re "-")) (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (re.++ (str.to_re "1") (re.opt (re.++ (re.range "0" "7") (re.opt (re.range "0" "9")))))) (re.++ (str.to_re "1") (re.opt (re.opt (str.to_re "80"))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 6) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)