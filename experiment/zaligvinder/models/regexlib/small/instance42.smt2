;test regex (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 0 0) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) ((_ re.loop 0 1) (re.++ (re.union (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.++ (re.union (str.to_re "x") (str.to_re "X")) (re.union (str.to_re "T") (str.to_re "t")))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "E") (str.to_re "e"))))))) (re.++ (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)