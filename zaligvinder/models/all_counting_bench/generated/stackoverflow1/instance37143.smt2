;test regex (REGEXP_SUBSTR(WORD, '#time\S[0-9]{1,2}'  ))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.++ (str.to_re "W") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (str.to_re "D")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "#") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (str.to_re " ")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)