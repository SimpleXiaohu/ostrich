;test regex (\d{3,}|[2-9]\d|1[2-9])(\.\d+)?|11\.\d*[1-9]\d*
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.union (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") (re.range "2" "9"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "11") (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)