;test regex gsub("(.*\\D\\d{6}|^\\d{6})([A-Z]{1}).*","\\2",test)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "D") (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d")))))) (re.++ (str.to_re "") (re.++ (str.to_re "\\") ((_ re.loop 6 6) (str.to_re "d"))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "2") (str.to_re "\u{22}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)