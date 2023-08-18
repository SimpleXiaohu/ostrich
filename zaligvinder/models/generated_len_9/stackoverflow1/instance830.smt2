;test regex ^(.*)(19|20\d{2})(.*[^\.mkv|mp4])
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "19") (re.++ (str.to_re "20") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.inter (re.diff re.allchar (str.to_re ".")) (re.inter (re.diff re.allchar (str.to_re "m")) (re.inter (re.diff re.allchar (str.to_re "k")) (re.inter (re.diff re.allchar (str.to_re "v")) (re.inter (re.diff re.allchar (str.to_re "|")) (re.inter (re.diff re.allchar (str.to_re "m")) (re.inter (re.diff re.allchar (str.to_re "p")) (re.diff re.allchar (str.to_re "4")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)