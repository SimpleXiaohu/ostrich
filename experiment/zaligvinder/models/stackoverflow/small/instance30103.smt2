;test regex powershell -Command "(Get-Content 'c:\full_path_here\input.log') -replace '.+?(0x[0-9a-f]{3}) .+?\\([^\\]+\.exe).*', '$1 $2'"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "G") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "-") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "c") (re.++ (str.to_re ":") (re.++ (str.to_re "\u{0c}") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "_") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "_") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (str.to_re "\u{27}"))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "0") (re.++ (str.to_re "x") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "f"))))) (re.++ (str.to_re " ") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.++ (re.+ (re.diff re.allchar (str.to_re "\\"))) (re.++ (str.to_re ".") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "e"))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}"))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{27}")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re " ")))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re "\u{27}") (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)