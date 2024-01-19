;test regex ((00)[01]{2}){4}((01)[01]{2}){4}((10)[01]{2}){4}((11)[01]{2}){4}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.++ (str.to_re "00") ((_ re.loop 2 2) (str.to_re "01")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re "01") ((_ re.loop 2 2) (str.to_re "01")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re "10") ((_ re.loop 2 2) (str.to_re "01")))) ((_ re.loop 4 4) (re.++ (str.to_re "11") ((_ re.loop 2 2) (str.to_re "01")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)