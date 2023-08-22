(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Hourspjpoptwql\u{2f}rlnjFrom\x3Asbver\u{3a}Ghost
(assert (str.in_re X (str.to_re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\u{13}\u{0a}")))
; /filename=[^\n]*\u{2e}eps/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".eps/i\u{0a}"))))
; ^(big5|euc(kr|jpms)|binary|greek|tis620|hebrew|ascii|swe7|koi8(r|u)|(u|keyb)cs2|(dec|hp|utf|geostd|armscii)8|gb(k|2312)|cp(8(5(0|2)|66)|932|125(0|1|6|7))|latin(1|2|5|7)|(u|s)jis|mac(ce|roman))$
(assert (str.in_re X (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "euc") (re.union (str.to_re "kr") (str.to_re "jpms"))) (str.to_re "binary") (str.to_re "greek") (str.to_re "tis620") (str.to_re "hebrew") (str.to_re "ascii") (str.to_re "swe7") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u"))) (re.++ (re.union (str.to_re "u") (str.to_re "keyb")) (str.to_re "cs2")) (re.++ (re.union (str.to_re "dec") (str.to_re "hp") (str.to_re "utf") (str.to_re "geostd") (str.to_re "armscii")) (str.to_re "8")) (re.++ (str.to_re "gb") (re.union (str.to_re "k") (str.to_re "2312"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "932") (re.++ (str.to_re "125") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "6") (str.to_re "7"))))) (re.++ (str.to_re "latin") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "5") (str.to_re "7"))) (re.++ (re.union (str.to_re "u") (str.to_re "s")) (str.to_re "jis")) (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman")))) (str.to_re "\u{0a}"))))
; Points\s+newszzzvmkituktgr\u{2f}etieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\u{0a}")))))
; (LT-?)?([0-9]{9}|[0-9]{12})
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "LT") (re.opt (str.to_re "-")))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9"))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)