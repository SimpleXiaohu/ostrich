;test regex (\w{3}PRI$|[^SIG].*SEC$)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "P") (re.++ (str.to_re "R") (str.to_re "I")))) (str.to_re "")) (re.++ (re.++ (re.inter (re.diff re.allchar (str.to_re "S")) (re.inter (re.diff re.allchar (str.to_re "I")) (re.diff re.allchar (str.to_re "G")))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "S") (re.++ (str.to_re "E") (str.to_re "C"))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)