;test regex \sCAPABILITY\s[^\n]{100}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (str.to_re "C") (re.++ (str.to_re "A") (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "I") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 100 100) (re.diff re.allchar (str.to_re "\u{0a}")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)