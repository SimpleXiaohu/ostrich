;test regex regex reg("(-?\\d+,?){2,}", regex::icase)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.++ (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))) (re.opt (str.to_re ",")))) ((_ re.loop 2 2) (re.++ (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))) (re.opt (str.to_re ","))))) (str.to_re "\u{22}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "e"))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)