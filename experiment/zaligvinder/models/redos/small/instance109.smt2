;test regex (?:board=\d+)?((?:topic|threadid)=[\dmsg#\.\/]{1,40}(?:start=[\dmsg#\.\/]{1,40})?|action=profileu=\d+)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "=") (re.+ (re.range "0" "9"))))))))) (re.union (re.++ (re.union (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "i") (str.to_re "c"))))) (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (str.to_re "d"))))))))) (re.++ (str.to_re "=") (re.++ ((_ re.loop 1 40) (re.union (re.range "0" "9") (re.union (str.to_re "m") (re.union (str.to_re "s") (re.union (str.to_re "g") (re.union (str.to_re "#") (re.union (str.to_re ".") (str.to_re "/")))))))) (re.opt (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "=") ((_ re.loop 1 40) (re.union (re.range "0" "9") (re.union (str.to_re "m") (re.union (str.to_re "s") (re.union (str.to_re "g") (re.union (str.to_re "#") (re.union (str.to_re ".") (str.to_re "/")))))))))))))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "=") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (re.++ (str.to_re "=") (re.+ (re.range "0" "9"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)