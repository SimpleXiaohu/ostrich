;test regex (.*)\s?#(\s?\d{3,4})\s*(?:\$\s*\d*\.\d*)?((?:-|\()?\$?(?:\d{1,3}[ ,]?)*(?:\.\d+)\)?)\s*((?:-|\()?\$?(?:\d{1,3}[ ,]?)*(?:\.\d+)\)?).*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "#") (re.++ (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 3 4) (re.range "0" "9"))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (re.++ (str.to_re "$") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") (re.* (re.range "0" "9"))))))) (re.++ (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "("))) (re.++ (re.opt (str.to_re "$")) (re.++ (re.* (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ","))))) (re.++ (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))) (re.opt (str.to_re ")")))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "("))) (re.++ (re.opt (str.to_re "$")) (re.++ (re.* (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re ","))))) (re.++ (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))) (re.opt (str.to_re ")")))))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)