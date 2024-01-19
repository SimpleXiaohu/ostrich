;test regex "(^Shipped on.* \\w.+\\s\\d{2},\\s\\d{4})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ (str.to_re "\\") (re.++ (str.to_re "w") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d"))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)