;test regex th>\\n<td>(\\d{4}\\.\\s*[a-zA-Z]+\\s*\\d{1,2}\\.,\\s*\\d{2}:\\d{2})<
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re ">") (re.++ (str.to_re "\\") (re.++ (str.to_re "n") (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "d") (re.++ (str.to_re ">") (re.++ (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "\\") (re.diff re.allchar (str.to_re "\n")))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d")))))))))) (str.to_re "<")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)