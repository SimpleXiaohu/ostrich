;test regex [^a,e,i,o,u]{0,}qu
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "a")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "i")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.diff re.allchar (str.to_re "u"))))))))))) ((_ re.loop 0 0) (re.inter (re.diff re.allchar (str.to_re "a")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "e")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "i")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re ",")) (re.diff re.allchar (str.to_re "u")))))))))))) (re.++ (str.to_re "q") (str.to_re "u")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)