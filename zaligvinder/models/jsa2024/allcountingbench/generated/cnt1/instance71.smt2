;test regex http://jp\.youtube\.com/get_video\?video_id=ATHC8qDkoO0&t=[-_a-z0-9A-Z]{32}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (re.++ (str.to_re ".") (re.++ (str.to_re "y") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "o") (re.++ (str.to_re "?") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "o") (re.++ (str.to_re "_") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "H") (re.++ (str.to_re "C") (re.++ (str.to_re "8") (re.++ (str.to_re "q") (re.++ (str.to_re "D") (re.++ (str.to_re "k") (re.++ (str.to_re "o") (re.++ (str.to_re "O") (re.++ (str.to_re "0") (re.++ (str.to_re "&") (re.++ (str.to_re "t") (re.++ (str.to_re "=") ((_ re.loop 32 32) (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.range "A" "Z")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)