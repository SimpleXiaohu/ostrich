;test regex ^(\((00|\+)39\)|(00|\+)39)?(38[890]|34[7-90]|36[680]|33[3-90]|32[89])\d{7}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.++ (str.to_re "(") (re.++ (re.union (str.to_re "00") (str.to_re "+")) (re.++ (str.to_re "39") (str.to_re ")")))) (re.++ (re.union (str.to_re "00") (str.to_re "+")) (str.to_re "39")))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "38") (str.to_re "890")) (re.++ (str.to_re "34") (re.range "7" "90"))) (re.++ (str.to_re "36") (str.to_re "680"))) (re.++ (str.to_re "33") (re.range "3" "90"))) (re.++ (str.to_re "32") (str.to_re "89"))) ((_ re.loop 7 7) (re.range "0" "9"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)