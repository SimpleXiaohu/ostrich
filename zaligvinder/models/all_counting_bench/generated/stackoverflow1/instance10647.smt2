;test regex (\d{0,1}\d[\s]*(?:bulan|bln|hari|hr|Januari|Februari|Pebruari|Maret|April|Mei|Juni|Juli|Agustus|September|Oktober|Oktobr|November|Desember|January|February|Pebruary|March|April|May|June|July|Augustus|September|October|November|December|JAN|FEB|PEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC|Jan|Feb|Peb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|Jan|Feb|Mar|Apr|Mei|Jun|Jul|Agu|Ags|Sep|Okt|Nov|Des?<!tiap)[\s]*[\d]*)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (re.range "0" "9")) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "b") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "n"))))) (re.++ (str.to_re "b") (re.++ (str.to_re "l") (str.to_re "n")))) (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "i"))))) (re.++ (str.to_re "h") (str.to_re "r"))) (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "i")))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "i"))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "i"))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "t")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (str.to_re "l")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "e") (str.to_re "i")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "i"))))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "i"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (str.to_re "s")))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "O") (re.++ (str.to_re "k") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))) (re.++ (str.to_re "O") (re.++ (str.to_re "k") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (str.to_re "r"))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y")))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y"))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y"))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (str.to_re "h")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (str.to_re "l")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "e"))))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "y"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (str.to_re "s"))))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "A") (str.to_re "N")))) (re.++ (str.to_re "F") (re.++ (str.to_re "E") (str.to_re "B")))) (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "B")))) (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "R")))) (re.++ (str.to_re "A") (re.++ (str.to_re "P") (str.to_re "R")))) (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "Y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "U") (str.to_re "N")))) (re.++ (str.to_re "J") (re.++ (str.to_re "U") (str.to_re "L")))) (re.++ (str.to_re "A") (re.++ (str.to_re "U") (str.to_re "G")))) (re.++ (str.to_re "S") (re.++ (str.to_re "E") (str.to_re "P")))) (re.++ (str.to_re "O") (re.++ (str.to_re "C") (str.to_re "T")))) (re.++ (str.to_re "N") (re.++ (str.to_re "O") (str.to_re "V")))) (re.++ (str.to_re "D") (re.++ (str.to_re "E") (str.to_re "C")))) (re.++ (str.to_re "J") (re.++ (str.to_re "a") (str.to_re "n")))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "P") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (str.to_re "c")))) (re.++ (str.to_re "J") (re.++ (str.to_re "a") (str.to_re "n")))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "M") (re.++ (str.to_re "e") (str.to_re "i")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "A") (re.++ (str.to_re "g") (str.to_re "u")))) (re.++ (str.to_re "A") (re.++ (str.to_re "g") (str.to_re "s")))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "O") (re.++ (str.to_re "k") (str.to_re "t")))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re "<") (re.++ (str.to_re "!") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (str.to_re "p")))))))))) (re.++ (re.* (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.* (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)