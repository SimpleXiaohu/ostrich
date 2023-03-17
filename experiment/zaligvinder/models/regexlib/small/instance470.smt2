;test regex %[\-\+0\s\#]{0,1}(\d+){0,1}(\.\d+){0,1}[hlI]{0,1}[cCdiouxXeEfgGnpsS]{1}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "%") (re.++ ((_ re.loop 0 1) (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "0") (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "#")))))) (re.++ ((_ re.loop 0 1) (re.+ (re.range "0" "9"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.++ ((_ re.loop 0 1) (re.union (str.to_re "h") (re.union (str.to_re "l") (str.to_re "I")))) ((_ re.loop 1 1) (re.union (str.to_re "c") (re.union (str.to_re "C") (re.union (str.to_re "d") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "u") (re.union (str.to_re "x") (re.union (str.to_re "X") (re.union (str.to_re "e") (re.union (str.to_re "E") (re.union (str.to_re "f") (re.union (str.to_re "g") (re.union (str.to_re "G") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "s") (str.to_re "S")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)