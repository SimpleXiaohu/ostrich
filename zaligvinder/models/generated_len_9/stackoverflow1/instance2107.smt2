;test regex sed -rne "s/.*([0|1]\.[0-9]{0,2})/\1/p"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.union (str.to_re "0") (re.union (str.to_re "|") (str.to_re "1"))) (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (re.++ (str.to_re "p") (str.to_re "\u{22}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)