;test regex regexp_extract($"data", "(.+\")(\\d{1,2}\\/\\d{1,2}\\/\\d{1,2})(.+)", <b>N</b>)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (str.to_re "\u{22}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}")) (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") ((_ re.loop 1 2) (str.to_re "d"))))))))))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re ">") (re.++ (str.to_re "N") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (str.to_re ">")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)