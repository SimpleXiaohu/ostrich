;test regex ^/health-protection/(environment|drug-misuse|communicable-diseases)/.*([^s].{5}|s[^e].{4}|se[^a].{3}|sea[^r].{2}|sear[^c].|searc[^h])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "t"))))))))))) (re.++ (str.to_re "d") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "-") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (str.to_re "e")))))))))))) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "s")))))))))))))))))))))) (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.union (re.union (re.union (re.++ (re.diff re.allchar (str.to_re "s")) ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "e")) ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "a")) ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (re.diff re.allchar (str.to_re "r")) ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "c")) (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.diff re.allchar (str.to_re "h"))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)