;test regex Regex.Replace (FilePath, @"/|\\{1,2}", "\\\\");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (re.union (re.++ (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "h")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (str.to_re "/")))))) (re.++ (re.++ ((_ re.loop 1 2) (str.to_re "\\")) (str.to_re "\u{22}")) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "\\") (str.to_re "\u{22}")))))))) (str.to_re ";"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)