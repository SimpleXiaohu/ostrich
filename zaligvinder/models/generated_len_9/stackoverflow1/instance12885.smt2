;test regex !<td>(?:<[^>]+>)*(\d{4})(?:<[^>]+>)*</td>!
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "!") (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ (re.* (re.++ (str.to_re "<") (re.++ (re.+ (re.diff re.allchar (str.to_re ">"))) (str.to_re ">")))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.* (re.++ (str.to_re "<") (re.++ (re.+ (re.diff re.allchar (str.to_re ">"))) (str.to_re ">")))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (str.to_re "!"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)