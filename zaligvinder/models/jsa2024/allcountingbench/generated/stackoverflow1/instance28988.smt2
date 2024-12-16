;test regex \"(\$)(\d{0,3}?)\,?(\d{1,3}?)\,?(\d{0,3})\s?\"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "$") (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re ",")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re ",")) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "\u{22}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)