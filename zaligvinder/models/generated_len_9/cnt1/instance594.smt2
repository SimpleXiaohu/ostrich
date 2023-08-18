;test regex \.(\d*)(?:9{5,20}|0{5,20})\d{0,2}(?:e(.+)|$)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.++ (re.union ((_ re.loop 5 20) (str.to_re "9")) ((_ re.loop 5 20) (str.to_re "0"))) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "e") (re.+ (re.diff re.allchar (str.to_re "\n")))) (str.to_re ""))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)