;test regex private final static String STARS_LINE_PATTERN = "\\(\\s+?(\\w+?)\\s+?\\(\\s+(\\w+)\\s+?(\\w+?\\s??){1,}\\s+?\\)\\s+?\\)";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "S") (re.++ (str.to_re "_") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re "_") (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "N") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (re.++ (re.* (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "w")) (re.++ (str.to_re "\\") (re.opt (str.to_re "s")))))) ((_ re.loop 1 1) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "w")) (re.++ (str.to_re "\\") (re.opt (str.to_re "s"))))))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (str.to_re "\\"))))))))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (str.to_re "\\")))))))))) (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)