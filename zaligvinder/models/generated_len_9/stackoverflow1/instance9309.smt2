;test regex ([aeiouy]+|[^aeiouy]+){3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) (re.union (re.+ (re.union (str.to_re "a") (re.union (str.to_re "e") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "u") (str.to_re "y"))))))) (re.+ (re.inter (re.diff re.allchar (str.to_re "a")) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re "i")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "u")) (re.diff re.allchar (str.to_re "y"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)