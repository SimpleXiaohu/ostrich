;test regex <a\s*(href=)?('|")[^'"]+('|") class=('|")nextpostslink('|")>.{1,6}</a>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "a") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (str.to_re "=")))))) (re.++ (re.union (str.to_re "\u{27}") (str.to_re "\u{22}")) (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.diff re.allchar (str.to_re "\u{22}")))) (re.++ (re.union (str.to_re "\u{27}") (str.to_re "\u{22}")) (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "=") (re.++ (re.union (str.to_re "\u{27}") (str.to_re "\u{22}")) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "k") (re.++ (re.union (str.to_re "\u{27}") (str.to_re "\u{22}")) (re.++ (str.to_re ">") (re.++ ((_ re.loop 1 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (str.to_re ">")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)