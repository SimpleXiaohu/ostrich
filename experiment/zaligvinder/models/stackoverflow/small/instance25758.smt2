;test regex ^[EC]D_V_[a-zA-Z]{5}____([0-9]{8})_[0-9]{3}_[a-zA-Z](_[0-9]{1,7})?\.([^<>:\\\/\\|\\*\\?]{3,4})(\.gz)?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (str.to_re "E") (str.to_re "C")) (re.++ (str.to_re "D") (re.++ (str.to_re "_") (re.++ (str.to_re "V") (re.++ (str.to_re "_") (re.++ ((_ re.loop 5 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "_") (re.++ (str.to_re "_") (re.++ (str.to_re "_") (re.++ (str.to_re "_") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.opt (re.++ (str.to_re "_") ((_ re.loop 1 7) (re.range "0" "9")))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 3 4) (re.inter (re.diff re.allchar (str.to_re "<")) (re.inter (re.diff re.allchar (str.to_re ">")) (re.inter (re.diff re.allchar (str.to_re ":")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "/")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "?"))))))))))))) (re.opt (re.++ (str.to_re ".") (re.++ (str.to_re "g") (str.to_re "z")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)