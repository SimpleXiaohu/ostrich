;test regex ^((https?|file|ftp|gopher|news|nntp):\/\/)([a-z]([a-z0-9\-]*\.)+([a-z]{2}|aero|arpa|biz|com|coop|edu|gov|info|int|jobs|mil|museum|name|nato|net|org|pro|travel)|(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]))(\/[a-z0-9_\-\.~]+)*(\/([a-z0-9_\-\.]*)(\?[a-z0-9+_\-\.%=&amp;]*)?)?(#[a-z][a-z0-9_]*)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e"))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (str.to_re "s"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))) (re.++ (re.union (re.++ (re.range "a" "z") (re.++ (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))) (str.to_re "."))) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re "a") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re "o"))))) (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "p") (str.to_re "a"))))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (str.to_re "z")))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m")))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "p"))))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (str.to_re "u")))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (str.to_re "o"))))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "t")))) (re.++ (str.to_re "j") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "s"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "i") (str.to_re "l")))) (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (str.to_re "m"))))))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "o"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t")))) (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "g")))) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (str.to_re "o")))) (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "l"))))))))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "."))) (re.union (re.union (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))))) (re.++ (re.* (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re "~"))))))))) (re.++ (re.opt (re.++ (str.to_re "/") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "-") (str.to_re ".")))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "_") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "%") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (str.to_re ";"))))))))))))))))))) (re.opt (re.++ (str.to_re "#") (re.++ (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)