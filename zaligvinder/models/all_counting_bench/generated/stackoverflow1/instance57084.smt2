;test regex ((?:[a-fA-F0-9]{2}(?:[ :][a-fA-F0-9]{2})*|\S)+)
(declare-const X String)
(assert (str.in_re X (re.+ (re.union (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (re.* (re.++ (re.union (str.to_re " ") (str.to_re ":")) ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))))))) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)