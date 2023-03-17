;test regex ^[1-9]{1}$|^[1-9]{1}[0-9]{1}$|^[1-3]{1}[0-6]{1}[0-5]{1}$|^365$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") ((_ re.loop 1 1) (re.range "1" "9"))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.range "1" "3")) (re.++ ((_ re.loop 1 1) (re.range "0" "6")) ((_ re.loop 1 1) (re.range "0" "5"))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (str.to_re "365")) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)