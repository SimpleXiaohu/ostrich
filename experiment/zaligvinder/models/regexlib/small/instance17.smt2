;test regex replace(MobileNo,&#39; &#39;,&#39;&#39;),&#39;^(\+44|0044|0)(7)[4-9][0-9]{8}$&#39;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "M") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "N") (str.to_re "o")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (str.to_re ";"))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (re.++ (str.to_re ";") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (str.to_re ";"))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (str.to_re ";")))))) (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "+") (str.to_re "44")) (str.to_re "0044")) (str.to_re "0")) (re.++ (str.to_re "7") (re.++ (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "&") (re.++ (str.to_re "#") (re.++ (str.to_re "39") (str.to_re ";"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)