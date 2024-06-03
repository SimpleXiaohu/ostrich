(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ((DK|FI|HU|LU|MT|SI)(-)?\d{8})|((BE|EE|DE|EL|LT|PT)(-)?\d{9})|((PL|SK)(-)?\d{10})|((IT|LV)(-)?\d{11})|((LT|SE)(-)?\d{12})|(AT(-)?U\d{8})|(CY(-)?\d{8}[A-Z])|(CZ(-)?\d{8,10})|(FR(-)?[\dA-HJ-NP-Z]{2}\d{9})|(IE(-)?\d[A-Z\d]\d{5}[A-Z])|(NL(-)?\d{9}B\d{2})|(ES(-)?[A-Z\d]\d{7}[A-Z\d])
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "DK") (str.to_re "FI") (str.to_re "HU") (str.to_re "LU") (str.to_re "MT") (str.to_re "SI")) (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.union (str.to_re "BE") (str.to_re "EE") (str.to_re "DE") (str.to_re "EL") (str.to_re "LT") (str.to_re "PT")) (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (re.union (str.to_re "IT") (str.to_re "LV")) (re.opt (str.to_re "-")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (re.union (str.to_re "LT") (str.to_re "SE")) (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "AT") (re.opt (str.to_re "-")) (str.to_re "U") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re "-")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "CZ") (re.opt (str.to_re "-")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "H") (re.range "J" "N") (re.range "P" "Z"))) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z")) (re.++ (str.to_re "NL") (re.opt (str.to_re "-")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "B") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}ES") (re.opt (str.to_re "-")) (re.union (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9"))))))
; \x2Fezsb\s+hirmvtg\u{2f}ggqh\.kqh\dRemotetoolsbar\x2Ekuaiso\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "/ezsb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "hirmvtg/ggqh.kqh\u{1b}") (re.range "0" "9") (str.to_re "Remotetoolsbar.kuaiso.com\u{0a}")))))
; /\u{2e}csv([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}")))))
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (not (str.in_re X (str.to_re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\u{0a}"))))
; X-Mailer\u{3a}SpyAgentRootHost\x3A
(assert (str.in_re X (str.to_re "X-Mailer:\u{13}SpyAgentRootHost:\u{0a}")))
(assert (> (str.len X) 10))
(check-sat)
