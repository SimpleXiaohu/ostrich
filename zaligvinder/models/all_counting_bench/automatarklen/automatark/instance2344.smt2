(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "IP") (re.* re.allchar) (str.to_re "encoder") (re.+ (re.range "0" "9")) (str.to_re "SAHPORT-User-Agent:\u{0a}")))))
; toolsbar\x2Ekuaiso\x2Ecom\d\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in_re X (re.++ (str.to_re "toolsbar.kuaiso.com") (re.range "0" "9") (str.to_re "/bar_pl/chk_bar.fcgi\u{0a}"))))
; \u{28}robert\u{40}blackcastlesoft\x2Ecom\u{29}
(assert (not (str.in_re X (str.to_re "(robert@blackcastlesoft.com)\u{0a}"))))
; User-Agent\x3Aregister\.aspUser-Agent\x3AHost\x3AcdpView
(assert (str.in_re X (str.to_re "User-Agent:register.aspUser-Agent:Host:cdpView\u{0a}")))
; (((19|20)([2468][048]|[13579][26]|0[48])|2000)/02/29|((19|20)[0-9]{2}/(0[469]|11)/(0[1-9]|[12][0-9]|30)|(19|20)[0-9]{2}/(0[13578]|1[02])/(0[1-9]|[12][0-9]|3[01])|(19|20)[0-9]{2}/02/(0[1-9]|1[0-9]|2[0-8])))
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.union (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))))) (str.to_re "2000")) (str.to_re "/02/29")) (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/02/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))))) (str.to_re "\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
