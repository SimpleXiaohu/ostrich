;test regex Console.WriteLine("Final total count of missing VMs: {0}", missingVms.Count);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "W") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "o") (re.++ (str.to_re "f") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "V") (re.++ (str.to_re "M") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ ((_ re.loop 0 0) (str.to_re " ")) (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "V") (re.++ (str.to_re "m") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "t"))))))))))))))))))) (str.to_re ";")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)