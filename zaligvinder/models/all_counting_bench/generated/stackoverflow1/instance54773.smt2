;test regex std::regex Base(R"(([+-]{0,1}[0-9]+\.[0-9]+))");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "\u{22}") (re.++ (re.++ ((_ re.loop 0 1) (re.union (str.to_re "+") (str.to_re "-"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (str.to_re "\u{22}")))) (str.to_re ";")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)