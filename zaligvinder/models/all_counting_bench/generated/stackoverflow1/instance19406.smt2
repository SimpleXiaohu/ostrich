;test regex ls -l | awk 'NF==9 && $NF ~ "^file_[0-9]{4}$"'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "l") (str.to_re " ")))))) (re.++ (re.++ (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "w") (re.++ (str.to_re "k") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "N") (re.++ (str.to_re "F") (re.++ (str.to_re "=") (re.++ (str.to_re "=") (re.++ (str.to_re "9") (re.++ (str.to_re " ") (re.++ (str.to_re "&") (re.++ (str.to_re "&") (str.to_re " "))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "N") (re.++ (str.to_re "F") (re.++ (str.to_re " ") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "_") ((_ re.loop 4 4) (re.range "0" "9"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)