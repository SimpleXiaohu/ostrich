;test regex (\W|^)[wW]{3}\.[^\s$]+
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_"))))) (str.to_re "")) (re.++ ((_ re.loop 3 3) (re.union (str.to_re "w") (str.to_re "W"))) (re.++ (str.to_re ".") (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.inter (re.diff re.allchar (str.to_re "\u{0c}")) (re.diff re.allchar (str.to_re "$"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)