;test regex /^(?:(?:\(?(?:00|\+)([1-4]\d\d|[1-9]\d?)\)?)?[\-\.\ \\\/]?)?((?:\(?\d{1,}\)?[\-\.\ \\\/]?){0,})(?:[\-\.\ \\\/]?(?:#|ext\.?|extension|x)[\-\.\ \\\/]?(\d+))?$/i
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) (re.++ (re.union (str.to_re "00") (str.to_re "+")) (re.++ (re.union (re.++ (re.range "1" "4") (re.++ (re.range "0" "9") (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")))) (re.opt (str.to_re ")")))))) (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\\") (str.to_re "/")))))))) (re.++ (re.++ (re.* (re.++ (re.opt (str.to_re "(")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\\") (str.to_re "/")))))))))) ((_ re.loop 0 0) (re.++ (re.opt (str.to_re "(")) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\\") (str.to_re "/"))))))))))) (re.opt (re.++ (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\\") (str.to_re "/")))))) (re.++ (re.union (re.union (re.union (str.to_re "#") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.opt (str.to_re ".")))))) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))))) (str.to_re "x")) (re.++ (re.opt (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re " ") (re.union (str.to_re "\\") (str.to_re "/")))))) (re.+ (re.range "0" "9")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re "i"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)