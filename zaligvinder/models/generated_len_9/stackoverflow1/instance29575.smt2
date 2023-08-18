;test regex (\D)+(\d+){1,2}( hour| minute)((\D)+(\d+){1,2}( minute))?(.+)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.+ (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re " ") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (str.to_re "r"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (str.to_re "e")))))))) (re.++ (re.opt (re.++ (re.+ (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.+ (re.range "0" "9"))) (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (str.to_re "e")))))))))) (re.opt (re.+ (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)