;test regex ^(\+\d{2}[ \-]{0,1}){0,1}(((\({0,1}[ \-]{0,1})0{0,1}\){0,1}[2|3|7|8]{1}\){0,1}[ \-]*(\d{4}[ \-]{0,1}\d{4}))|(1[ \-]{0,1}(300|800|900|902)[ \-]{0,1}((\d{6})|(\d{3}[ \-]{0,1}\d{3})))|(13[ \-]{0,1}([\d \-]{5})|((\({0,1}[ \-]{0,1})0{0,1}\){0,1}4{1}[\d \-]{8,10})))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "+") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-")))))) (re.union (re.union (re.++ (re.++ ((_ re.loop 0 1) (str.to_re "(")) ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-")))) (re.++ ((_ re.loop 0 1) (str.to_re "0")) (re.++ ((_ re.loop 0 1) (str.to_re ")")) (re.++ ((_ re.loop 1 1) (re.union (str.to_re "2") (re.union (str.to_re "|") (re.union (str.to_re "3") (re.union (str.to_re "|") (re.union (str.to_re "7") (re.union (str.to_re "|") (str.to_re "8")))))))) (re.++ ((_ re.loop 0 1) (str.to_re ")")) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "-"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))))))))) (re.++ (str.to_re "1") (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-"))) (re.++ (re.union (re.union (re.union (str.to_re "300") (str.to_re "800")) (str.to_re "900")) (str.to_re "902")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-"))) (re.union ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")))))))))) (re.union (re.++ (str.to_re "13") (re.++ ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 5 5) (re.union (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "-")))))) (re.++ (re.++ ((_ re.loop 0 1) (str.to_re "(")) ((_ re.loop 0 1) (re.union (str.to_re " ") (str.to_re "-")))) (re.++ ((_ re.loop 0 1) (str.to_re "0")) (re.++ ((_ re.loop 0 1) (str.to_re ")")) (re.++ ((_ re.loop 1 1) (str.to_re "4")) ((_ re.loop 8 10) (re.union (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "-")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)