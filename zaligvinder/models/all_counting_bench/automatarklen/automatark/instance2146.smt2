(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ClientsConnected-\d+online-casino-searcher\.com\s+Warezxmlns\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ClientsConnected-") (re.+ (re.range "0" "9")) (str.to_re "online-casino-searcher.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Warezxmlns:\u{0a}")))))
; ^([A-Z0-9]{5})$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; /PRIVMSG #new :\u{02}\u{5b}(GOOGLE|SCAN)\u{5d}\u{02}\u{20}Scanning/
(assert (not (str.in_re X (re.++ (str.to_re "/PRIVMSG #new :\u{02}[") (re.union (str.to_re "GOOGLE") (str.to_re "SCAN")) (str.to_re "]\u{02} Scanning/\u{0a}")))))
; \b([Jj](([Aa][Nn][Uu][Aa][Rr][Yy]|[Aa][Nn])|([Uu][Nn][Ee]|[Uu][Nn])|([Uu][Ll][Yy]|[Uu][Ll])))\b|\b((([Ss][Ee][Pp][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])[Ee][Mm])|[Oo][Cc][Tt][Oo])[Bb][Ee][Rr]|([Ss][Ee][Pp]|[Nn][Oo][Vv]|[Dd][Ee][Cc]|[Oo][Cc][Tt])\b|\b([Mm][Aa]([Yy]|([Rr][Cc][Hh]|[Rr])))\b|\b[Aa](([Pp][Rr][Ii][Ll]|[Pp][Rr])|([Uu][Gg][Uu][Ss][Tt]|[Uu][Gg]))\b|\b[Ff]([Ee][Bb][Rr][Uu][Aa][Rr][Yy]|[Ee][Bb])\b
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "E") (str.to_re "e"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "L") (str.to_re "l")) (re.union (str.to_re "Y") (str.to_re "y"))))) (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "V") (str.to_re "v"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "C") (str.to_re "c")))) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "M") (str.to_re "m"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "O") (str.to_re "o")))) (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "R") (str.to_re "r"))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "H") (str.to_re "h"))) (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "L") (str.to_re "l"))) (re.++ (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t"))))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (str.to_re "\u{0a}") (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "U") (str.to_re "u")) (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "Y") (str.to_re "y"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "P") (str.to_re "p"))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "V") (str.to_re "v"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "C") (str.to_re "c"))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "T") (str.to_re "t")))))))
; \d{1,2}d \d{1,2}h
(assert (not (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "d ") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "h\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
