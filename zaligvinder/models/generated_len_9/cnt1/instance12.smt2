;test regex ^.*\x0a\x55\x73\x65\x72\x2d\x41\x67\x65\x6e\x74\x3a\x20.{5,30}MSIE\x20[1-9]*.
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "\u{55}") (re.++ (str.to_re "\u{73}") (re.++ (str.to_re "\u{65}") (re.++ (str.to_re "\u{72}") (re.++ (str.to_re "\u{2d}") (re.++ (str.to_re "\u{41}") (re.++ (str.to_re "\u{67}") (re.++ (str.to_re "\u{65}") (re.++ (str.to_re "\u{6e}") (re.++ (str.to_re "\u{74}") (re.++ (str.to_re "\u{3a}") (re.++ (str.to_re "\u{20}") (re.++ ((_ re.loop 5 30) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "M") (re.++ (str.to_re "S") (re.++ (str.to_re "I") (re.++ (str.to_re "E") (re.++ (str.to_re "\u{20}") (re.++ (re.* (re.range "1" "9")) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)