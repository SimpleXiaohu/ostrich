;test regex "(('[^/\\?*\[\]]{1,31}'|[A-Za-z0-9_]{1,31})!)?((\$?[A-Za-z]{1,3})(\$?[0-9]{1,6}))"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 1 31) (re.inter (re.diff re.allchar (str.to_re "/")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "?")) (re.inter (re.diff re.allchar (str.to_re "*")) (re.inter (re.diff re.allchar (str.to_re "[")) (re.diff re.allchar (str.to_re "]")))))))) (str.to_re "\u{27}"))) ((_ re.loop 1 31) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re "!"))) (re.++ (re.++ (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 6) (re.range "0" "9")))) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)