;test regex echo $all_apk_file | sed 's/(.*apk ){1}/TEST/g'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (str.to_re " "))))) (re.++ (str.to_re "") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "_") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "k") (re.++ (str.to_re "_") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " "))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 1 1) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "k") (str.to_re " ")))))) (re.++ (str.to_re "/") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{27}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)