;test regex "input.regex" = "([0-9]{1,}\\.[0-9]{1,}\\.[0-9]{1,}\\.[0-9]{1,})(.*)(getstream.*)(appname=.*)(content_id=[0-9]{1,}.*)(eid=[0-9].*)(version=[(\\d+\\.?)]*)(.*uid=[0-9]{1,})(.*model=[^\\"]*)"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))) (re.++ (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))) (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))) (re.++ (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "=") (re.* (re.union (str.to_re "(") (re.union (str.to_re "\\") (re.union (str.to_re "d") (re.union (str.to_re "+") (re.union (str.to_re "\\") (re.union (str.to_re ".") (re.union (str.to_re "?") (str.to_re ")"))))))))))))))))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))))))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "m") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "=") (re.* (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "\u{22}"))))))))))) (str.to_re "\u{22}")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)