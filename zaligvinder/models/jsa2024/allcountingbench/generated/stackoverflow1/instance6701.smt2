;test regex \A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "@")) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))) (re.++ (str.to_re "@") (re.++ (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re "."))) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 2 2) (re.range "a" "z")))) (str.to_re "Z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)