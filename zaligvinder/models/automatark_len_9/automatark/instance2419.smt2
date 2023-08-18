(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "DmInf^\u{0d}\u{0a}\u{0d}\u{0a}Attached/bar_pl/chk.fcgi\u{0a}")))
; toolbarplace\x2Ecom\sUser-Agent\u{3a}\d+\x2Fnewsurfer4\x2Fclient=BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "/newsurfer4/client=BysooTBADdcww.dmcast.com\u{0a}"))))
; (^([0-9]|[0-1][0-9]|[2][0-3]):([0-5][0-9])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)|(^([0-9]|[1][0-9]|[2][0-3])(\s{0,1})(AM|PM|am|pm|aM|Am|pM|Pm{2,2})$)
(assert (not (str.in_re X (re.union (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))) (re.range "0" "5") (re.range "0" "9")) (re.++ (str.to_re "\u{0a}") (re.union (re.range "0" "9") (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm") (str.to_re "aM") (str.to_re "Am") (str.to_re "pM") (re.++ (str.to_re "P") ((_ re.loop 2 2) (str.to_re "m")))))))))
; \u{7c}roogoo\u{7c}Testiufilfwulmfi\u{2f}riuf\.lioHeaders
(assert (not (str.in_re X (str.to_re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\u{0a}"))))
(assert (> (str.len X) 9))
(check-sat)
