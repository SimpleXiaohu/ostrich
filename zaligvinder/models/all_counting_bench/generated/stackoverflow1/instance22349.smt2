;test regex (alpha|beta|test|dev|load|local|\.od.{1}|dev-wa|\.sq.{1}|\.hbox)\.
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "p") (re.++ (str.to_re "h") (str.to_re "a"))))) (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (str.to_re "a"))))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "t"))))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "v")))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (str.to_re "d"))))) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (str.to_re "l")))))) (re.++ (str.to_re ".") (re.++ (str.to_re "o") (re.++ (str.to_re "d") ((_ re.loop 1 1) (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "-") (re.++ (str.to_re "w") (str.to_re "a"))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "s") (re.++ (str.to_re "q") ((_ re.loop 1 1) (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "h") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (str.to_re "x")))))) (str.to_re "."))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)