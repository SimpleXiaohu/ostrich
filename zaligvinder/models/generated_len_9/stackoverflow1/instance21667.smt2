;test regex (^\d{1,4})(s: .*?)(SEARCHPATTERN)(.*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.*? (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (str.to_re "N"))))))))))))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)