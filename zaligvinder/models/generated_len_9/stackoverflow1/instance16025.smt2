;test regex DB_TABLE_(\\w){3}\\.\\w+\\s*=\\s*(\\d+|(\'\\s*bbb.+?dsd\\s*\'))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "D") (re.++ (str.to_re "B") (re.++ (str.to_re "_") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "\\") (str.to_re "w"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "w")) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "=") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.union (re.++ (str.to_re "\\") (re.+ (str.to_re "d"))) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ (re.+? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "d") (re.++ (str.to_re "s") (re.++ (str.to_re "d") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (str.to_re "\u{27}")))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)