(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; PASSW=.*www\x2Emakemesearch\x2Ecom.*HBand,X-Mailer\x3A
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.* re.allchar) (str.to_re "www.makemesearch.com") (re.* re.allchar) (str.to_re "HBand,X-Mailer:\u{13}\u{0a}")))))
; ^([a-zA-z\s]{2,})$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "z") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))
; ^(([A-Za-z0-9\!\#\$\%\&\'\*\+\-\/\=\?\^_\`\{\|\}\~]+\.*)*[A-Za-z0-9\!\#\$\%\&\'\*\+\-\/\=\?\^_\`\{\|\}\~]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.* (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "-") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "_") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~"))) (re.* (str.to_re ".")))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "-") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "_") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~"))) (str.to_re "@") (re.* (re.union (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (str.to_re "-"))) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".")))) ((_ re.loop 1 63) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; ([A-PR-UWYZa-pr-uwyz]([0-9]{1,2}|([A-HK-Ya-hk-y][0-9]|[A-HK-Ya-hk-y][0-9]([0-9]|[ABEHMNPRV-Yabehmnprv-y]))|[0-9][A-HJKS-UWa-hjks-uw]))
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z") (re.range "a" "p") (re.range "r" "u") (str.to_re "w") (str.to_re "y") (str.to_re "z")) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.union (re.range "A" "H") (re.range "K" "Y") (re.range "a" "h") (re.range "k" "y")) (re.range "0" "9") (re.union (re.range "0" "9") (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (re.range "V" "Y") (str.to_re "a") (str.to_re "b") (str.to_re "e") (str.to_re "h") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (re.range "v" "y"))) (re.++ (re.range "0" "9") (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (re.range "S" "U") (str.to_re "W") (re.range "a" "h") (str.to_re "j") (str.to_re "k") (re.range "s" "u") (str.to_re "w")))))))
; zmnjgmomgbdz\u{2f}zzmw\.gzt\s+Reports\s+HostHost\u{3a}Host\x3AHost\x3AMyWebSearchSearchAssistant
(assert (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Reports") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "HostHost:Host:Host:MyWebSearchSearchAssistant\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
