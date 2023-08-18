;test regex [a-z0-9]{1,10}_([0]?[1-9]|[1][0-2])([0]?[1-9]|[1|2][0-9]|[3][0|1])([2000-2099]{4}).cta$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 1 10) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "_") (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (re.union (str.to_re "|") (str.to_re "2"))) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (str.to_re "0") (re.union (str.to_re "|") (str.to_re "1"))))) (re.++ ((_ re.loop 4 4) (re.range "2000" "2099")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "t") (str.to_re "a"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)