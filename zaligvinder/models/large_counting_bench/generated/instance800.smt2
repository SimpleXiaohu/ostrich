;test regex url:            /:\/\/(www\.)?.{1,200}\..{1,1800}/,
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.opt (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "."))))) (re.++ ((_ re.loop 1 200) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 1800) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "/"))))))))))))))))))))))))) (str.to_re ","))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)