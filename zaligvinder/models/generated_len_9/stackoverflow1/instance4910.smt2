;test regex START(.*)Closing(.*)(((.?\d{1,3})+.\d+)+.\d+.\d+.\d)\d
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "T") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "C") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.+ (re.++ (re.+ (re.++ (re.opt (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 1 3) (re.range "0" "9")))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.+ (re.range "0" "9"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.range "0" "9"))))))) (re.range "0" "9"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)