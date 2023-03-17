;test regex ^(AB|AC|AD)|((\S{7})+)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.union (re.union (re.++ (str.to_re "A") (str.to_re "B")) (re.++ (str.to_re "A") (str.to_re "C"))) (re.++ (str.to_re "A") (str.to_re "D")))) (re.+ ((_ re.loop 7 7) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)