;test regex select regexp_substr('2018-09-90 88:88:90:900 -0900','([0-9]*-[0-9]*-[0-9]* [0-9]*:[0-9]*:[0-9]*:[0-9]* (\\+|-)[0-9][0-9]{2,})')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "2018") (re.++ (str.to_re "-") (re.++ (str.to_re "09") (re.++ (str.to_re "-") (re.++ (str.to_re "90") (re.++ (str.to_re " ") (re.++ (str.to_re "88") (re.++ (str.to_re ":") (re.++ (str.to_re "88") (re.++ (str.to_re ":") (re.++ (str.to_re "90") (re.++ (str.to_re ":") (re.++ (str.to_re "900") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "0900") (str.to_re "\u{27}")))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.union (re.+ (str.to_re "\\")) (str.to_re "-")) (re.++ (re.range "0" "9") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))))))) (str.to_re "\u{27}")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)