;test regex (?:.*(?:\r?\n)+){2}age(?:.*(?:\r?\n|$)+){3}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") ((_ re.loop 3 3) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.union (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}")) (str.to_re "")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)