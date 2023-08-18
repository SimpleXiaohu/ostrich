;test regex ^(\t{2,})(\S.*)\n(?:\1\t.*\n)*
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ (re.* (str.to_re "\u{09}")) ((_ re.loop 2 2) (str.to_re "\u{09}"))) (re.++ (re.++ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))) (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "\u{0a}") (re.* (re.++ (_ re.reference 1) (re.++ (str.to_re "\u{09}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{0a}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)