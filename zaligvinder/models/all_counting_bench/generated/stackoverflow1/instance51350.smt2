;test regex SELECT REGEXP_SUBSTR('2711393|2711441|2711441', '([0-9]{7})') from DUAL;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.union (re.union (re.++ (str.to_re "\u{27}") (str.to_re "2711393")) (str.to_re "2711441")) (re.++ (re.++ (str.to_re "2711441") (str.to_re "\u{27}")) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{27}"))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "U") (re.++ (str.to_re "A") (re.++ (str.to_re "L") (str.to_re ";"))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)