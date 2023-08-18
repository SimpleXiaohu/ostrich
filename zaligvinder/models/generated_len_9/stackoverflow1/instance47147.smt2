;test regex "m_{0}A1_{1}Tmp"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "m") (re.++ ((_ re.loop 0 0) (str.to_re "_")) (re.++ (str.to_re "A") (re.++ (str.to_re "1") (re.++ ((_ re.loop 1 1) (str.to_re "_")) (re.++ (str.to_re "T") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re "\u{22}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)