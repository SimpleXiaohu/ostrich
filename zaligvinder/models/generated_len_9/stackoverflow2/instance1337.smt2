;test regex .{60}(<br>|<break>)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 60 60) (re.diff re.allchar (str.to_re "\n"))) (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (str.to_re ">")))) (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "k") (str.to_re ">")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)