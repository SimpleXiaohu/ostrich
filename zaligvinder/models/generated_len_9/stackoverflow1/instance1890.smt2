;test regex sed -r 's/^(([^,]*,){5})([^,]+)[0-9]{4},(([^,]*,)*)([^,]+)[0-9]{4}(,[^,]*)$/\1\3\4\6\7/'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 5 5) (re.++ (re.* (re.diff re.allchar (str.to_re ","))) (str.to_re ","))) (re.++ (re.+ (re.diff re.allchar (str.to_re ","))) ((_ re.loop 4 4) (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ (re.* (re.++ (re.* (re.diff re.allchar (str.to_re ","))) (str.to_re ","))) (re.++ (re.+ (re.diff re.allchar (str.to_re ","))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ",") (re.* (re.diff re.allchar (str.to_re ","))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (_ re.reference 3) (re.++ (_ re.reference 4) (re.++ (_ re.reference 6) (re.++ (_ re.reference 7) (re.++ (str.to_re "/") (str.to_re "\u{27}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)