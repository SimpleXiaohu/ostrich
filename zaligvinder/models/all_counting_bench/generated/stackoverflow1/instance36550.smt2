;test regex [^ \d]+(\d\s*){8}[^ \d]+
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re " ")) (re.diff re.allchar (re.range "0" "9")))) (re.++ ((_ re.loop 8 8) (re.++ (re.range "0" "9") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.+ (re.inter (re.diff re.allchar (str.to_re " ")) (re.diff re.allchar (re.range "0" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)