;test regex ^[01]*0{5,}[01]*|[01]*11$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.* (str.to_re "01")) (re.++ (re.++ (re.* (str.to_re "0")) ((_ re.loop 5 5) (str.to_re "0"))) (re.* (str.to_re "01"))))) (re.++ (re.++ (re.* (str.to_re "01")) (str.to_re "11")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)