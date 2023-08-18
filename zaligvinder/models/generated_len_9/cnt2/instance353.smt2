;test regex (?:\[((?:[a-z]|\*){1,16})(?:[=\s]([^\x00-\x1F'<>\[\]]{1,2083}))?\])|(?:\[\/([a-z]{1,16})\])
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "[") (re.++ ((_ re.loop 1 16) (re.union (re.range "a" "z") (str.to_re "*"))) (re.++ (re.opt (re.++ (re.union (str.to_re "=") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 2083) (re.inter (re.diff re.allchar (re.range "\u{00}" "\u{1f}")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re "[")) (re.diff re.allchar (str.to_re "]")))))))))) (str.to_re "]")))) (re.++ (str.to_re "[") (re.++ (str.to_re "/") (re.++ ((_ re.loop 1 16) (re.range "a" "z")) (str.to_re "]")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)