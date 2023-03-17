;test regex <[^!>%]*(([A-Z]{1,})|([^A-Za-z"'>=&\?][A-Z]{1,}[a-z]*))[\s=>]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "!")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.diff re.allchar (str.to_re "%"))))) (re.++ (re.union (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.++ (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "=")) (re.inter (re.diff re.allchar (str.to_re "&")) (re.diff re.allchar (str.to_re "?"))))))))) (re.++ (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.* (re.range "a" "z"))))) (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (str.to_re "=") (str.to_re ">"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)