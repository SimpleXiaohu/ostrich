;test regex ^(([a-h,A-H,j-n,J-N,p-z,P-Z,0-9]{9})([a-h,A-H,j-n,J-N,p,P,r-t,R-T,v-z,V-Z,0-9])([a-h,A-H,j-n,J-N,p-z,P-Z,0-9])(\d{6}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 9 9) (re.union (re.range "a" "h") (re.union (str.to_re ",") (re.union (re.range "A" "H") (re.union (str.to_re ",") (re.union (re.range "j" "n") (re.union (str.to_re ",") (re.union (re.range "J" "N") (re.union (str.to_re ",") (re.union (re.range "p" "z") (re.union (str.to_re ",") (re.union (re.range "P" "Z") (re.union (str.to_re ",") (re.range "0" "9")))))))))))))) (re.++ (re.union (re.range "a" "h") (re.union (str.to_re ",") (re.union (re.range "A" "H") (re.union (str.to_re ",") (re.union (re.range "j" "n") (re.union (str.to_re ",") (re.union (re.range "J" "N") (re.union (str.to_re ",") (re.union (str.to_re "p") (re.union (str.to_re ",") (re.union (str.to_re "P") (re.union (str.to_re ",") (re.union (re.range "r" "t") (re.union (str.to_re ",") (re.union (re.range "R" "T") (re.union (str.to_re ",") (re.union (re.range "v" "z") (re.union (str.to_re ",") (re.union (re.range "V" "Z") (re.union (str.to_re ",") (re.range "0" "9"))))))))))))))))))))) (re.++ (re.union (re.range "a" "h") (re.union (str.to_re ",") (re.union (re.range "A" "H") (re.union (str.to_re ",") (re.union (re.range "j" "n") (re.union (str.to_re ",") (re.union (re.range "J" "N") (re.union (str.to_re ",") (re.union (re.range "p" "z") (re.union (str.to_re ",") (re.union (re.range "P" "Z") (re.union (str.to_re ",") (re.range "0" "9"))))))))))))) ((_ re.loop 6 6) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)