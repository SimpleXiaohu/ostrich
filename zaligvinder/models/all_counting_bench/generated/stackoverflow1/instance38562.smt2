;test regex (?:^Today)\D*(\d+)(?:.*\R){2}(.*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "y")))))) (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "R"))) (re.* (re.diff re.allchar (str.to_re "\n")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)