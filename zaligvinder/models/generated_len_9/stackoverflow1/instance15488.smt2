;test regex ^if\(\d+([<>=!]=|[<>])\d+\).{1,50}:.{1,50}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "(") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.union (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "=") (str.to_re "!")))) (str.to_re "=")) (re.union (str.to_re "<") (str.to_re ">"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ ((_ re.loop 1 50) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ":") ((_ re.loop 1 50) (re.diff re.allchar (str.to_re "\n"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)