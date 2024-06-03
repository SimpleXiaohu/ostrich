;test regex [^A-Za-z]|[^\S\r\n]{2,}
(declare-const X String)
(assert (str.in_re X (re.union (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.diff re.allchar (re.range "a" "z"))) (re.++ (re.* (re.inter (re.diff re.allchar (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{0a}"))))) ((_ re.loop 2 2) (re.inter (re.diff re.allchar (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{0a}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)