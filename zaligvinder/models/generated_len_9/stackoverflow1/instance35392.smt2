;test regex p "0177/385490".gsub(/((\d+)\D?(\d+)\D?(\d+)\D?+(\d+)){10}/,'\2\3\4\5') 
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "0177") (re.++ (str.to_re "/") (re.++ (str.to_re "385490") (re.++ (str.to_re "\u{22}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "/") (re.++ ((_ re.loop 10 10) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.diff re.allchar (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.+ (re.opt (re.diff re.allchar (re.range "0" "9")))) (re.+ (re.range "0" "9"))))))))) (str.to_re "/"))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (_ re.reference 2) (re.++ (_ re.reference 3) (re.++ (_ re.reference 4) (re.++ (_ re.reference 5) (str.to_re "\u{27}")))))))) (str.to_re " "))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)