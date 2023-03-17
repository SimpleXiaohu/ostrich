;test regex ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (str.to_re ":"))))))) (re.++ (re.union (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (str.to_re "s")))) (re.++ (re.union (re.++ (str.to_re "h") (str.to_re "t")) (str.to_re "f")) (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))) (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)