;test regex <g_n><!\[CDATA\[\d{1,4} GSD(.|\s)*\]\]></g_n>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "g") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "!") (re.++ (str.to_re "[") (re.++ (str.to_re "C") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "[") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "G") (re.++ (str.to_re "S") (re.++ (str.to_re "D") (re.++ (re.* (re.union (re.diff re.allchar (str.to_re "\n")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (str.to_re "]") (re.++ (str.to_re "]") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (str.to_re ">")))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)