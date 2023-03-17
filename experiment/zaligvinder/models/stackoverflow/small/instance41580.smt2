;test regex \?([a-z]{4,})\=(.+)\#(\$\|)?([a-z]+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "?") (re.++ (re.++ (re.* (re.range "a" "z")) ((_ re.loop 4 4) (re.range "a" "z"))) (re.++ (str.to_re "=") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "#") (re.++ (re.opt (re.++ (str.to_re "$") (str.to_re "|"))) (re.+ (re.range "a" "z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)