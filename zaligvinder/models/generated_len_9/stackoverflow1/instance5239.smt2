;test regex [^046][!^046]*\([A-Z]{2,10}\)[!^046]*[^046]
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (str.to_re "046")) (re.++ (re.* (re.union (str.to_re "!") (re.union (str.to_re "^") (str.to_re "046")))) (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 10) (re.range "A" "Z")) (re.++ (str.to_re ")") (re.++ (re.* (re.union (str.to_re "!") (re.union (str.to_re "^") (str.to_re "046")))) (re.diff re.allchar (str.to_re "046"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)