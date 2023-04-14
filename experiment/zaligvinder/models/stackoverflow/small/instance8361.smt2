;test regex '\d{2}[-/.]\d{2}[-/.]\d{4}' # For dd-mm-yyyy or dd/mm/yyyy or dd.mm.yyyy.
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "/") (str.to_re "."))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "/") (str.to_re "."))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "d") (re.++ (str.to_re "-") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "-") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "d") (re.++ (str.to_re "/") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "/") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "d") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.++ (str.to_re "y") (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)