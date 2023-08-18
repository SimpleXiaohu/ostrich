;test regex ^([\d- :]{14}[A|P]M)\s+(<DIR>|\d+)\s(.+)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 14 14) (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re " ") (str.to_re ":"))))) (re.++ (re.union (str.to_re "A") (re.union (str.to_re "|") (str.to_re "P"))) (str.to_re "M"))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "D") (re.++ (str.to_re "I") (re.++ (str.to_re "R") (str.to_re ">"))))) (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.+ (re.diff re.allchar (str.to_re "\n")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)