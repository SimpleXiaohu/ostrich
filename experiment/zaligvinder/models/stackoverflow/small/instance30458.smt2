;test regex echo 'data-c(huk24-small1);divider-bin-1.4.4;divider-conf-1.3.3-w(1,16);storage-bin-1.5.4;storage-conf-1.5.0-w(1);worker-bin-4.5.1;worker-conf-4.4.1-c(huk24)_20130620200658' | perl -plE 's/_\d{14}$//'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "u") (re.++ (str.to_re "k") (re.++ (str.to_re "24") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (str.to_re "1"))))))))))) (re.++ (str.to_re ";") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "-") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "4") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "4") (re.++ (str.to_re ";") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "3") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "3") (re.++ (str.to_re "-") (re.++ (str.to_re "w") (re.++ (re.++ (str.to_re "1") (re.++ (str.to_re ",") (str.to_re "16"))) (re.++ (str.to_re ";") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "5") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "4") (re.++ (str.to_re ";") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "5") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "0") (re.++ (str.to_re "-") (re.++ (str.to_re "w") (re.++ (str.to_re "1") (re.++ (str.to_re ";") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "-") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "4") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "5") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "1") (re.++ (str.to_re ";") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "-") (re.++ (str.to_re "4") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "4") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "u") (re.++ (str.to_re "k") (str.to_re "24")))) (re.++ (str.to_re "_") (re.++ (str.to_re "20130620200658") (re.++ (str.to_re "\u{27}") (str.to_re " "))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "_") ((_ re.loop 14 14) (re.range "0" "9"))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re "\u{27}"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)