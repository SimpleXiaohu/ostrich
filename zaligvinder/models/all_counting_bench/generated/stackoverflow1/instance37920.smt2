;test regex ^$|^[hello]|^([FG]?\d{5}|\d{5}[AB])$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "") (str.to_re "")) (re.++ (str.to_re "") (re.union (str.to_re "h") (re.union (str.to_re "e") (re.union (str.to_re "l") (re.union (str.to_re "l") (str.to_re "o"))))))) (re.++ (re.++ (str.to_re "") (re.union (re.++ (re.opt (re.union (str.to_re "F") (str.to_re "G"))) ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.union (str.to_re "A") (str.to_re "B"))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)