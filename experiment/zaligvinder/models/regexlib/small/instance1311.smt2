;test regex ^((Sir|Dr.|Mr.|Mrs.|Ms.|Rev.){1}[ ]?)?([A-Z]{1}[.]{1}([A-Z]{1}[.]{1})?|[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{1,}[-]{1}[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{0,}[ ]{1}[A-Z]{1}[a-z]{0,}){1}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "S") (re.++ (str.to_re "i") (str.to_re "r"))) (re.++ (str.to_re "D") (re.++ (str.to_re "r") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "M") (re.++ (str.to_re "r") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "M") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "s") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.diff re.allchar (str.to_re "\n"))))))) (re.opt (str.to_re " ")))) ((_ re.loop 1 1) (re.union (re.union (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.opt (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to_re ".")))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 1 1) (re.range "a" "z")))))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 0 0) (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to_re " ")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.range "a" "z")) ((_ re.loop 0 0) (re.range "a" "z"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)