;test regex In [12]: df["phone_number"] = df["ANI/IP"].str.extract(r'(\d{10})')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "12") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "f") (re.++ (re.union (str.to_re "\u{22}") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "e") (re.union (str.to_re "_") (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "m") (re.union (str.to_re "b") (re.union (str.to_re "e") (re.union (str.to_re "r") (str.to_re "\u{22}")))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "f") (re.++ (re.union (str.to_re "\u{22}") (re.union (str.to_re "A") (re.union (str.to_re "N") (re.union (str.to_re "I") (re.union (str.to_re "/") (re.union (str.to_re "I") (re.union (str.to_re "P") (str.to_re "\u{22}")))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{27}")))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)