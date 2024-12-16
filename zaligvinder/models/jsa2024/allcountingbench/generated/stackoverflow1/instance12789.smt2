;test regex ^(\+|00)[0-9]{1,3}[0-9]{4,14}(?:x.+)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "+") (str.to_re "00")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ ((_ re.loop 4 14) (re.range "0" "9")) (re.opt (re.++ (str.to_re "x") (re.+ (re.diff re.allchar (str.to_re "\n"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)