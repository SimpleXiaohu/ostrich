;test regex ((a|p|A|P)(m|M)\s{0,1}(0[0-9]|1[0-2]|[0-9]):[0-5][0-9]:[0-5][0-9])|((a|p|A|P)(m|M)\s{0,1}(0[0-9]|1[0-2]|[0-9]):[0-5][0-9])|((0[0-9]|1[0-2]|[0-9]):[0-5][0-9]\s{0,1}(a|p|A|P)(m|M))|((0[0-9]|1[0-2]|[0-9]):[0-5][0-9]:[0-5][0-9]\s{0,1}(a|p|A|P)(m|M))|((0[0-9]|1[0-9]|2[0-3]|[0-9]):[0-5][0-9]:[0-5][0-9])|((0[0-9]|1[0-9]|2[0-3]|[0-9]):[0-5][0-9])
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.++ (re.union (re.union (re.union (str.to_re "a") (str.to_re "p")) (str.to_re "A")) (str.to_re "P")) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))))) (re.++ (re.union (re.union (re.union (str.to_re "a") (str.to_re "p")) (str.to_re "A")) (str.to_re "P")) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (str.to_re "a") (str.to_re "p")) (str.to_re "A")) (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M"))))))))) (re.++ (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (str.to_re "a") (str.to_re "p")) (str.to_re "A")) (str.to_re "P")) (re.union (str.to_re "m") (str.to_re "M")))))))))))) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)