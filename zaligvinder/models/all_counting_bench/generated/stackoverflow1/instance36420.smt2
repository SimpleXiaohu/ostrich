;test regex "(.{1,10}|\\S{11,})(\\s+|$)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.union ((_ re.loop 1 10) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "S")) ((_ re.loop 11 11) (str.to_re "S"))))) (re.++ (re.union (re.++ (str.to_re "\\") (re.+ (str.to_re "s"))) (str.to_re "")) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)