;test regex $sec_gi =~ s/.*?\|(\d{5,}).*/\1/;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "_") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.*? (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "|") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re "/") (str.to_re ";")))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)