;test regex ((?:[^&quot;,]|(?:&quot;(?:\\{2}|\\&quot;|[^&quot;])*?&quot;))*)
(declare-const X String)
(assert (str.in_re X (re.* (re.union (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "q")) (re.inter (re.diff re.allchar (str.to_re "u")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "t")) (re.inter (re.diff re.allchar (str.to_re ";")) (re.diff re.allchar (str.to_re ",")))))))) (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re ";") (re.++ (re.* (re.union (re.union ((_ re.loop 2 2) (str.to_re "\\")) (re.++ (str.to_re "\\") (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))))) (re.inter (re.diff re.allchar (str.to_re "&")) (re.inter (re.diff re.allchar (str.to_re "q")) (re.inter (re.diff re.allchar (str.to_re "u")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "t")) (re.diff re.allchar (str.to_re ";"))))))))) (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)