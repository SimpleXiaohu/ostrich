;test regex grep -Ev "^\$.*\*[0-9A-Fa-f]{2}$" a.txt |grep -v ADVER
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "$") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "*") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (str.to_re " ")))))))))) (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "D") (re.++ (str.to_re "V") (re.++ (str.to_re "E") (str.to_re "R"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)