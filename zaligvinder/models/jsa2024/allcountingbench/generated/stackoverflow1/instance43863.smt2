;test regex @"(.+?\s+){5}.+?h3\.asp";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 5 5) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "h") (re.++ (str.to_re "3") (re.++ (str.to_re ".") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)