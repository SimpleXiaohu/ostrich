;test regex \-?\(?\$?\s*\-?\s*\(?(((\d{1,3}((\,\d{3})*|\d*))?(\.\d{1,4})?)|((\d{1,3}((\,\d{3})*|\d*))(\.\d{0,4})?))\)?\ ?(one)?\ ?(two)?\ ?(three)?\ ?(four)?\ ?(five)?\ ?(six)?\ ?(seven)?\ ?(eight)?\ ?(nine)?\ ?(ten)?\ ?(eleven)?\ ?(twelve)?\ ?(thirteen)?\ ?(fourteen)?\ ?(fifteen)?\ ?(sixteen)?\ ?(seventeen)?\ ?(eighteen)?\ ?(nineteen)?\ ?(hundred)?\ ?(thousand)?\ ?(million)?\ ?(billion)?\ ?(trillion)?\ ?(dollars)?\ ?(pounds)?\ ?(euros)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (str.to_re "(")) (re.++ (re.opt (str.to_re "$")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (str.to_re "-")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (str.to_re "(")) (re.++ (re.union (re.++ (re.opt (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 4) (re.range "0" "9"))))) (re.++ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 4) (re.range "0" "9")))))) (re.++ (re.opt (str.to_re ")")) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "e")))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "w") (str.to_re "o")))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "e")))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (str.to_re "r"))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (str.to_re "e"))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "i") (str.to_re "x")))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "n")))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (str.to_re "t")))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "e"))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "n")))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "n"))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "v") (str.to_re "e"))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n")))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "n"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "d")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re "d"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n"))))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "s")))))))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (str.to_re "s"))))))) (re.++ (re.opt (str.to_re " ")) (re.opt (re.++ (str.to_re "e") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (str.to_re "s"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)