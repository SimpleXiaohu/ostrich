;test regex (?:logger\d\d\ )?([\dA-F]{10}),?(\d{6}[\dA-F]{5,6})\ ?
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.opt (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (str.to_re " ")))))))))) ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.range "A" "F")))) (re.++ (re.opt (str.to_re ",")) (re.++ (re.++ ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 5 6) (re.union (re.range "0" "9") (re.range "A" "F")))) (re.opt (str.to_re " ")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)