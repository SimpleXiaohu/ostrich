;test regex (?:"([a-zA-Z0-9 /\-\:\.\,]+)",|\\N,|"",|""){26}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 26 26) (re.union (re.union (re.union (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "/") (re.union (str.to_re "-") (re.union (str.to_re ":") (re.union (str.to_re ".") (str.to_re ",")))))))))) (str.to_re "\u{22}"))) (str.to_re ",")) (re.++ (re.++ (str.to_re "\\") (str.to_re "N")) (str.to_re ","))) (re.++ (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}")) (str.to_re ","))) (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)