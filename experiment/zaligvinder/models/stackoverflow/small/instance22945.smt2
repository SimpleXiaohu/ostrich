;test regex OPEN_SESSION[\s](?:\(*AAAA*\))?([A-Za-z0-9-_.]{4,20})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "O") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (re.++ (str.to_re "N") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "I") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.opt (re.++ (re.* (str.to_re "(")) (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ (re.* (str.to_re "A")) (str.to_re ")"))))))) ((_ re.loop 4 20) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re "_") (str.to_re ".")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)