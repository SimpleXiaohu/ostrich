;test regex ^([+]39)?\s?((313)|(32[03789])|(33[013456789])|(34[0256789])|(36[0368])|(37[037])|(38[0389])|(39[0123]))[\s-]?([\d]{7})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "+") (str.to_re "39"))) (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "313") (re.++ (str.to_re "32") (str.to_re "03789"))) (re.++ (str.to_re "33") (str.to_re "013456789"))) (re.++ (str.to_re "34") (str.to_re "0256789"))) (re.++ (str.to_re "36") (str.to_re "0368"))) (re.++ (str.to_re "37") (str.to_re "037"))) (re.++ (str.to_re "38") (str.to_re "0389"))) (re.++ (str.to_re "39") (str.to_re "0123"))) (re.++ (re.opt (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "-"))) ((_ re.loop 7 7) (re.range "0" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)