;test regex this.$http.get("https://something.com/cities_&_stops_lat_&_lng/'+encodeURIComponent('28\\.1\\d{3}') +'/'+encodeURIComponent('77\\.5\\d{3}')+'.json");
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.diff re.allchar (str.to_re "\n")))))) (re.++ (str.to_re "") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "/") (re.++ (str.to_re "c") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "_") (re.++ (str.to_re "&") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re "_") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "&") (re.++ (str.to_re "_") (re.++ (str.to_re "l") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "/") (re.++ (re.+ (str.to_re "\u{27}")) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "U") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "28") (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "1") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (str.to_re "\u{27}")))))))) (re.++ (re.+ (str.to_re " ")) (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (re.+ (str.to_re "\u{27}")) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "U") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (re.+ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "77") (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "5") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (str.to_re "\u{27}"))))))))) (re.++ (str.to_re "\u{27}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "s") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (str.to_re ";"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)