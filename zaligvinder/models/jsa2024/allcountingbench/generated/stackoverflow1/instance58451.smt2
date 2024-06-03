;test regex (01|02|03|07|44\D*1|44\D*2|44\D*3|44\D*7|)(\d\D*){9}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "01") (str.to_re "02")) (str.to_re "03")) (str.to_re "07")) (re.++ (str.to_re "44") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (str.to_re "1")))) (re.++ (str.to_re "44") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (str.to_re "2")))) (re.++ (str.to_re "44") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (str.to_re "3")))) (re.++ (str.to_re "44") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (str.to_re "7"))))) (str.to_re "")) ((_ re.loop 9 9) (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)