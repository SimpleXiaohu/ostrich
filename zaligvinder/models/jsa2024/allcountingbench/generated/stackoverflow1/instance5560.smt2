;test regex gsub!(/(^(?:\s{4}|\t).*?$)+^(\S)/m, "<pre>\n\\1\n</pre>\\2")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "!") (re.++ (re.++ (re.++ (str.to_re "/") (re.+ (re.++ (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 4 4) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "\u{09}")) (re.* (re.diff re.allchar (str.to_re "\n"))))) (str.to_re "")))) (re.++ (str.to_re "") (re.++ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "/") (str.to_re "m"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "<") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (str.to_re "\\") (re.++ (str.to_re "2") (str.to_re "\u{22}")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)