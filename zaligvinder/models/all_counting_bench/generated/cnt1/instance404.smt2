;test regex ^\u{20}BitTorrent protocol.{48}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\u{20b}") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") ((_ re.loop 48 48) (re.diff re.allchar (str.to_re "\n"))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)