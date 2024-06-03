(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (not (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{0a}")))))
; /filename=[^\n]*\u{2e}bcl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".bcl/i\u{0a}"))))
; ^((\d{2}(([02468][048])|([13579][26]))[-]?((((0?[13578])|(1[02]))[-]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[-]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[-]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[-]?((((0?[13578])|(1[02]))[-]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[-]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[-]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s((([0-1]?[0-9])|([2][0-3]))\:([0-5][0-9])))?$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (re.opt (str.to_re "-")) (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2") (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "7") (str.to_re "8") (str.to_re "9")))) (re.opt (str.to_re "-")) (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2") (re.opt (str.to_re "-")) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))))))) (re.opt (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{0a}")))))
; are\d+X-Mailer\u{3a}+Host\x3A\x2Easpx
(assert (not (str.in_re X (re.++ (str.to_re "are") (re.+ (re.range "0" "9")) (str.to_re "X-Mailer") (re.+ (str.to_re ":")) (str.to_re "Host:.aspx\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
