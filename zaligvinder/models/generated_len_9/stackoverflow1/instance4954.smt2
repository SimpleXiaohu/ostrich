;test regex (  sysctl::conf \{.*\}\n{1,})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "y") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "{") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "}") (re.++ (re.* (str.to_re "\u{0a}")) ((_ re.loop 1 1) (str.to_re "\u{0a}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)