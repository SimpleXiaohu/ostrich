;test regex :%s/\v(%^|\n)\zs\d+\n\d{2}(:\d{2}){2},\d{3} --\> \d{2}(:\d{2}){2},\d{3}$\n//
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re ":") (re.++ (str.to_re "%") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{0B}") (re.++ (re.union (re.++ (str.to_re "%") (str.to_re "")) (str.to_re "\u{0a}")) (re.++ (str.to_re "z") (re.++ (str.to_re "s") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "\u{0a}") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "-") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))) (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "/") (str.to_re "/")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)