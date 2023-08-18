;test regex ^.*\x0a\x55\x73\x65\x72\x2d\x41\x67\x65\x6e\x74\x3a\x20.{10,70}rv\x3a[0-2]\x2e[0-9].{0,30}Gecko\x2f.*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "\u{55}") (re.++ (str.to_re "\u{73}") (re.++ (str.to_re "\u{65}") (re.++ (str.to_re "\u{72}") (re.++ (str.to_re "\u{2d}") (re.++ (str.to_re "\u{41}") (re.++ (str.to_re "\u{67}") (re.++ (str.to_re "\u{65}") (re.++ (str.to_re "\u{6e}") (re.++ (str.to_re "\u{74}") (re.++ (str.to_re "\u{3a}") (re.++ (str.to_re "\u{20}") (re.++ ((_ re.loop 10 70) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "r") (re.++ (str.to_re "v") (re.++ (str.to_re "\u{3a}") (re.++ (re.range "0" "2") (re.++ (str.to_re "\u{2e}") (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 30) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "G") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "k") (re.++ (str.to_re "o") (re.++ (str.to_re "\u{2f}") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)