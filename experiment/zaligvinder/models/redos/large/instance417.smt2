;test regex ((http://|https://|//)[-a-zA-Z0-9@:%_\+.~\#?&=]{2,256}\.[a-z]{2,4}[^\n\r']*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (str.to_re "/") (str.to_re "/"))) (re.++ ((_ re.loop 2 256) (re.union (str.to_re "-") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "@") (re.union (str.to_re ":") (re.union (str.to_re "%") (re.union (str.to_re "_") (re.union (str.to_re "+") (re.union (str.to_re ".") (re.union (str.to_re "~") (re.union (str.to_re "#") (re.union (str.to_re "?") (re.union (str.to_re "&") (str.to_re "=")))))))))))))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 4) (re.range "a" "z")) (re.* (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.diff re.allchar (str.to_re "\u{27}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)