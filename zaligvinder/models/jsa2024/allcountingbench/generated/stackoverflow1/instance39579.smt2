;test regex regexp_extract('2foa1fa::12hjk','^(\\w.*)\\:{2}(\\w.*)$',1) as word1
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "2") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (re.++ (str.to_re "1") (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "12") (re.++ (str.to_re "h") (re.++ (str.to_re "j") (re.++ (str.to_re "k") (str.to_re "\u{27}"))))))))))))))) (re.++ (str.to_re ",") (str.to_re "\u{27}"))) (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "\\") (re.++ (str.to_re "w") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re ":")) (re.++ (str.to_re "\\") (re.++ (str.to_re "w") (re.* (re.diff re.allchar (str.to_re "\n")))))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (str.to_re "1"))) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (str.to_re "1"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)