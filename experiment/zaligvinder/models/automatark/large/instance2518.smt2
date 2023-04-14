(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|
(assert (str.in_re X (re.union (re.++ (str.to_re "SELECT") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "*") (str.to_re ")") (str.to_re "(") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "FROM") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{0a}"))))
; ^(20|23|27|30|33)-[0-9]{8}-[0-9]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "20") (str.to_re "23") (str.to_re "27") (str.to_re "30") (str.to_re "33")) (str.to_re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "-") (re.range "0" "9") (str.to_re "\u{0a}")))))
; ^([Aa][LKSZRAEPlkszraep]|[Cc][AOTaot]|[Dd][ECec]|[Ff][LMlm]|[Gg][AUau]|[Hh][Ii]|[Ii][ADLNadln]|[Kk][SYsy]|[Ll][Aa]|[Mm][ADEHINOPSTadehinopst]|[Nn][CDEHJMVYcdehjmvy]|[Oo][HKRhkr]|[Pp][ARWarw]|[Rr][Ii]|[Ss][CDcd]|[Tt][NXnx]|[Uu][Tt]|[Vv][AITait]|[Ww][AIVYaivy])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R") (str.to_re "A") (str.to_re "E") (str.to_re "P") (str.to_re "l") (str.to_re "k") (str.to_re "s") (str.to_re "z") (str.to_re "r") (str.to_re "a") (str.to_re "e") (str.to_re "p"))) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T") (str.to_re "a") (str.to_re "o") (str.to_re "t"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "C") (str.to_re "e") (str.to_re "c"))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "L") (str.to_re "M") (str.to_re "l") (str.to_re "m"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "A") (str.to_re "U") (str.to_re "a") (str.to_re "u"))) (re.++ (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "a") (str.to_re "d") (str.to_re "l") (str.to_re "n"))) (re.++ (re.union (str.to_re "K") (str.to_re "k")) (re.union (str.to_re "S") (str.to_re "Y") (str.to_re "s") (str.to_re "y"))) (re.++ (re.union (str.to_re "L") (str.to_re "l")) (re.union (str.to_re "A") (str.to_re "a"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "I") (str.to_re "N") (str.to_re "O") (str.to_re "P") (str.to_re "S") (str.to_re "T") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "i") (str.to_re "n") (str.to_re "o") (str.to_re "p") (str.to_re "s") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "E") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "V") (str.to_re "Y") (str.to_re "c") (str.to_re "d") (str.to_re "e") (str.to_re "h") (str.to_re "j") (str.to_re "m") (str.to_re "v") (str.to_re "y"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R") (str.to_re "h") (str.to_re "k") (str.to_re "r"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "A") (str.to_re "R") (str.to_re "W") (str.to_re "a") (str.to_re "r") (str.to_re "w"))) (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "I") (str.to_re "i"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "C") (str.to_re "D") (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "N") (str.to_re "X") (str.to_re "n") (str.to_re "x"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "V") (str.to_re "v")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "T") (str.to_re "a") (str.to_re "i") (str.to_re "t"))) (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.union (str.to_re "A") (str.to_re "I") (str.to_re "V") (str.to_re "Y") (str.to_re "a") (str.to_re "i") (str.to_re "v") (str.to_re "y")))) (str.to_re "\u{0a}")))))
; ((DK|FI|HU|LU|MT|SI)(-)?\d{8})|((BE|EE|DE|EL|LT|PT)(-)?\d{9})|((PL|SK)(-)?\d{10})|((IT|LV)(-)?\d{11})|((LT|SE)(-)?\d{12})|(AT(-)?U\d{8})|(CY(-)?\d{8}[A-Z])|(CZ(-)?\d{8,10})|(FR(-)?[\dA-HJ-NP-Z]{2}\d{9})|(IE(-)?\d[A-Z\d]\d{5}[A-Z])|(NL(-)?\d{9}B\d{2})|(ES(-)?[A-Z\d]\d{7}[A-Z\d])
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "DK") (str.to_re "FI") (str.to_re "HU") (str.to_re "LU") (str.to_re "MT") (str.to_re "SI")) (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (str.to_re "BE") (str.to_re "EE") (str.to_re "DE") (str.to_re "EL") (str.to_re "LT") (str.to_re "PT")) (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (re.union (str.to_re "IT") (str.to_re "LV")) (re.opt (str.to_re "-")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (re.union (str.to_re "LT") (str.to_re "SE")) (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "AT") (re.opt (str.to_re "-")) (str.to_re "U") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "CZ") (re.opt (str.to_re "-")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "H") (re.range "J" "N") (re.range "P" "Z"))) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "NL") (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "B") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}ES") (re.opt (str.to_re "-")) (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")))))))
; /^\/[a-z]{5}\.php\?id=0\d{5}111D30[a-zA-Z0-9]{6}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 5 5) (re.range "a" "z")) (str.to_re ".php?id=0") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "111D30") ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{0a}")))))
(check-sat)