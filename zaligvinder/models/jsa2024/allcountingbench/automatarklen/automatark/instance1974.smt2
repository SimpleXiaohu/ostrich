(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /<body[^>]+?onreadystatechange\s*=.*?<body[^>]+?style\s*=\s*[\u{22}\u{27}](-ms-)?behavior\s*:[^\u{22}\u{27}]+?[\u{22}\u{27}][^>]*?>[\s\t\r\n]*?<\/body/si
(assert (not (str.in_re X (re.++ (str.to_re "/<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "onreadystatechange") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* re.allchar) (str.to_re "<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (str.to_re "-ms-")) (str.to_re "behavior") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ":") (re.+ (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "\u{09}") (str.to_re "\u{0d}") (str.to_re "\u{0a}") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "</body/si\u{0a}")))))
; /TimeToLive=[^&]*?(%60|\u{60})/iP
(assert (not (str.in_re X (re.++ (str.to_re "/TimeToLive=") (re.* (re.comp (str.to_re "&"))) (re.union (str.to_re "%60") (str.to_re "`")) (str.to_re "/iP\u{0a}")))))
; Host\u{3a}\s+Agentbody=\u{25}21\u{25}21\u{25}21OptixSubject\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Agentbody=%21%21%21Optix\u{13}Subject:\u{0a}"))))
; \b(([01]?\d?\d|2[0-4]\d|25[0-5])\.){3}([01]?\d?\d|2[0-4]\d|25[0-5])\b
(assert (not (str.in_re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "."))) (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "\u{0a}")))))
; ^(([0]?[1-9]|1[0-2])(:)([0-5][0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9")))))
(assert (> (str.len X) 10))
(check-sat)
