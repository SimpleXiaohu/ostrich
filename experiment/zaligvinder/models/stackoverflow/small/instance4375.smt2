;test regex RuleFor(m => m.UserName).Matches(@"\A\S{3,15}\z");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "U") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))))))))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "A") (re.++ ((_ re.loop 3 15) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.++ (str.to_re "z") (str.to_re "\u{22}")))))) (str.to_re ";"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)