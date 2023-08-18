;test regex sed -E 's@^(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}\/)32$@\1128@g'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "@")))))))))) (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re "/"))) (str.to_re "32")))) (re.++ (str.to_re "") (re.++ (str.to_re "@") (re.++ (_ re.reference 1128) (re.++ (str.to_re "@") (re.++ (str.to_re "g") (str.to_re "\u{27}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)