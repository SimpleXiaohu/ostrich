;test regex gsub(".*EGA-.*New=([0-9/]{8} [0-9:]{5}).*|.*EGA.*", "\\1", events5$data_updated)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.union (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "A") (re.++ (str.to_re "-") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "N") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "=") (re.++ (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (str.to_re "/"))) (re.++ (str.to_re " ") ((_ re.loop 5 5) (re.union (re.range "0" "9") (str.to_re ":"))))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))) (re.++ (re.++ (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "A") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (str.to_re "\u{22}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (str.to_re "5")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "_") (re.++ (str.to_re "u") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "d")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)