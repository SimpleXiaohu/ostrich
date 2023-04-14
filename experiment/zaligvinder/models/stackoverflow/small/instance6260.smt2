;test regex wpbCellFeaturesControl <- subset(wpbCellFeatures, grepl("^[0-9]{3}(00[1-3])[0-9]{6}", wpbCellFeatures$rowColFoVCell))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "w") (re.++ (str.to_re "p") (re.++ (str.to_re "b") (re.++ (str.to_re "C") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "w") (re.++ (str.to_re "p") (re.++ (str.to_re "b") (re.++ (str.to_re "C") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "s"))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.++ (str.to_re "00") (re.range "1" "3")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{22}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "p") (re.++ (str.to_re "b") (re.++ (str.to_re "C") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "s")))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "V") (re.++ (str.to_re "C") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (str.to_re "l")))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)