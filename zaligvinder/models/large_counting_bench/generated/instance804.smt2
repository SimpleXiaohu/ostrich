;test regex code_name:00:12 vertical 01 1.3489:27 vsftypyre.01 [91.02.01.6] 29.05.2018 {1705}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (str.to_re "00") (re.++ (str.to_re ":") (re.++ (str.to_re "12") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "01") (re.++ (str.to_re " ") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "3489") (re.++ (str.to_re ":") (re.++ (str.to_re "27") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "s") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "01") (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "91") (re.union (str.to_re ".") (re.union (str.to_re "02") (re.union (str.to_re ".") (re.union (str.to_re "01") (re.union (str.to_re ".") (str.to_re "6"))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "29") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "05") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "2018") ((_ re.loop 1705 1705) (str.to_re " "))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)