;test regex =trim(REGEXEXTRACT(REGEXREPLACE(REGEXREPLACE(A2,"https?://",""),"^(w{3}\.)?","")&"/","([^/?]+)"))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "=") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (re.++ (re.++ (str.to_re "A") (str.to_re "2")) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re "\u{22}")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}")))))))))))))))) (re.++ (str.to_re ",") (str.to_re "\u{22}"))) (re.++ (str.to_re "") (re.++ (re.opt (re.++ ((_ re.loop 3 3) (str.to_re "w")) (str.to_re "."))) (str.to_re "\u{22}")))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}")))) (re.++ (str.to_re "&") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "/") (str.to_re "\u{22}"))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "/")) (re.diff re.allchar (str.to_re "?")))) (str.to_re "\u{22}"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)