;test regex cat wordlist | grep -e "^fi{6}"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (str.to_re " "))))))))))))) (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{22}")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "f") (re.++ ((_ re.loop 6 6) (str.to_re "i")) (str.to_re "\u{22}"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)