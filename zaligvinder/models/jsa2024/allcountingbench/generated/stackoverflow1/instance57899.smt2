;test regex "^(ABC) ?([0-9]{4}|[0-9]{6})?(?:(?:/)([0-9]{4}|[0-9]{6}))?(?:(?: ?XYZ ?)([0-9]{4}))?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "A") (re.++ (str.to_re "B") (str.to_re "C"))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9")))) (re.++ (re.opt (re.++ (str.to_re "/") (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))))) (re.opt (re.++ (re.++ (re.opt (str.to_re " ")) (re.++ (str.to_re "X") (re.++ (str.to_re "Y") (re.++ (str.to_re "Z") (re.opt (str.to_re " ")))))) ((_ re.loop 4 4) (re.range "0" "9")))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)