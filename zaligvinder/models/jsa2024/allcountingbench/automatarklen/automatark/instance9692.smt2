(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{0a}")))))
; ^(([a-z][0-9])|([0-9][a-z])|([a-z0-9][a-z0-9\-]{1,2}[a-z0-9])|([a-z0-9][a-z0-9\-](([a-z0-9\-][a-z0-9])|([a-z0-9][a-z0-9\-]))[a-z0-9\-]*[a-z0-9]))\.(co|me|org|ltd|plc|net|sch|ac|mod|nhs|police|gov)\.uk$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "a" "z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "a" "z")) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")) (re.union (re.++ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-")))) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to_re ".") (re.union (str.to_re "co") (str.to_re "me") (str.to_re "org") (str.to_re "ltd") (str.to_re "plc") (str.to_re "net") (str.to_re "sch") (str.to_re "ac") (str.to_re "mod") (str.to_re "nhs") (str.to_re "police") (str.to_re "gov")) (str.to_re ".uk\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
