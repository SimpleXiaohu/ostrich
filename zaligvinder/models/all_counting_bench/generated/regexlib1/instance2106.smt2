;test regex ^([2-9])(\d{2})(-?|\040?)(\d{4})( ?|\040?)(\d{1,4}?|\040?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "2" "9") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (re.opt (str.to_re "-")) (re.opt (str.to_re "\u{0020}"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (re.opt (str.to_re " ")) (re.opt (str.to_re "\u{0020}"))) (re.union ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (str.to_re "\u{0020}"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)