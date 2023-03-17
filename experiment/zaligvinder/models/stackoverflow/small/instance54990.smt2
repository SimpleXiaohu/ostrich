;test regex ([^\r\n]+.)[\r\n]{1,2}([a-z]+,)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{0a}")))) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 1 2) (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (re.++ (re.+ (re.range "a" "z")) (str.to_re ","))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)