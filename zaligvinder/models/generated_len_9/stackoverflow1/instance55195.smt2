;test regex ([MIN,MAX,SUM]+):([0-9]{4}.[0-9]{2}),(...),(...),(...)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.+ (re.union (str.to_re "M") (re.union (str.to_re "I") (re.union (str.to_re "N") (re.union (str.to_re ",") (re.union (str.to_re "M") (re.union (str.to_re "A") (re.union (str.to_re "X") (re.union (str.to_re ",") (re.union (str.to_re "S") (re.union (str.to_re "U") (str.to_re "M")))))))))))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re ",") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re ",") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)