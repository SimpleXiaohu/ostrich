;test regex somefile_(|.|[^1].+|10|11|12|13|14|15|17|18|19|.{3,}).txt
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (re.union (str.to_re "") (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "1")) (re.+ (re.diff re.allchar (str.to_re "\n"))))) (str.to_re "10")) (str.to_re "11")) (str.to_re "12")) (str.to_re "13")) (str.to_re "14")) (str.to_re "15")) (str.to_re "17")) (str.to_re "18")) (str.to_re "19")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)