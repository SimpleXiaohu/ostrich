;test regex stringi::stri_extract_all_regex('61.00.62.1', '\\d{1,2}\\.\\d')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "61") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "00") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "62") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "1") (str.to_re "\u{27}"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (str.to_re "\u{27}"))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)