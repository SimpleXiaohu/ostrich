;test regex highs\(\d+\)\[.*?\]\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\]\sftid\(\d+\):\s.
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "s") (re.++ (str.to_re "(") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (str.to_re "[") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "]") (re.++ (str.to_re "[") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re "]") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "(") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (str.to_re ":") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)