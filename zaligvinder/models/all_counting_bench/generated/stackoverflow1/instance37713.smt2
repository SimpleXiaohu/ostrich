;test regex _([a-z]{2,8})_?(\d{1,2})?(\.|_)(\d{3,10})\.([a-z]{2,6})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 8) (re.range "a" "z")) (re.++ (re.opt (str.to_re "_")) (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.union (str.to_re ".") (str.to_re "_")) (re.++ ((_ re.loop 3 10) (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 6) (re.range "a" "z"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)