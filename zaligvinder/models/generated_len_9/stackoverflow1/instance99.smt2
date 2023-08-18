;test regex ((\s|\t)*\/{2,})(.*[-]+)(\r?\n)((\1(.*)\4?)+)\4\1\3\4?
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.union (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "\u{09}"))) (re.++ (re.* (str.to_re "/")) ((_ re.loop 2 2) (str.to_re "/")))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (str.to_re "-"))) (re.++ (re.++ (re.opt (str.to_re "\u{0d}")) (str.to_re "\u{0a}")) (re.++ (re.+ (re.++ (_ re.reference 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.opt (_ re.reference 4))))) (re.++ (_ re.reference 4) (re.++ (_ re.reference 1) (re.++ (_ re.reference 3) (re.opt (_ re.reference 4)))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)