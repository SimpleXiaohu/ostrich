;test regex ^[^06]{3}[^0]{2}[^0][1-8][^0]{2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "06"))) (re.++ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "0"))) (re.++ (re.diff re.allchar (str.to_re "0")) (re.++ (re.range "1" "8") ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "0")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)