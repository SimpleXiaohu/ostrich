(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(\$)?(\s)?(\-)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; /Host\u{3a}[^\n]+\u{3a}\d+\u{0d}\u{0a}/
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.+ (re.comp (str.to_re "\u{0a}"))) (str.to_re ":") (re.+ (re.range "0" "9")) (str.to_re "\u{0d}\u{0a}/\u{0a}")))))
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (str.in_re X (str.to_re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\u{0a}")))
(check-sat)