;test regex '(?:.*?\\s+07(?:\\s+\\S+){3}\\s+(\\S+))?'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (re.opt (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (str.to_re "07") (re.++ ((_ re.loop 3 3) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (str.to_re "\\") (re.+ (str.to_re "S")))))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (str.to_re "\\") (re.+ (str.to_re "S"))))))))))) (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)