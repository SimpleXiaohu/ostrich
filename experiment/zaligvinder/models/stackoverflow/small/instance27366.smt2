;test regex (.+)?([^\s]+.{10}'.$query.'.{10}[^\s]+)(.+)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.+ (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.++ (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.++ ((_ re.loop 10 10) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{27}") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 10 10) (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))))))))))))) (re.opt (re.+ (re.diff re.allchar (str.to_re "\n"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)