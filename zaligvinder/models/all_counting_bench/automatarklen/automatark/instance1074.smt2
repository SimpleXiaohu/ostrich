(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <a[a-zA-Z0-9 ="'.:;?]*(name=){1}[a-zA-Z0-9 ="'.:;?]*\s*((/>)|(>[a-zA-Z0-9 ="'<>.:;?]*</a>))
(assert (str.in_re X (re.++ (str.to_re "<a") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) ((_ re.loop 1 1) (str.to_re "name=")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "/>") (re.++ (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re " ") (str.to_re "=") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "?"))) (str.to_re "</a>"))) (str.to_re "\u{0a}"))))
; /^\/hello\/[0-9]\.[0-9]\/[0-9]{3}\/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/iU
(assert (str.in_re X (re.++ (str.to_re "//hello/") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-") ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "/iU\u{0a}"))))
; ppcdomain\x2Eco\x2Euk\d+Referer\x3A\w+PARSERHost\u{3a}A-311ServerUser-Agent\x3A
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.+ (re.range "0" "9")) (str.to_re "Referer:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:\u{0a}")))))
; www\x2Ealtnet\x2EcomHost\x3ANSIS_DOWNLOADSubject\x3AUser-Agent\x3Awww\x2Esearchingall\x2Ecom
(assert (not (str.in_re X (str.to_re "www.altnet.com\u{1b}Host:NSIS_DOWNLOADSubject:User-Agent:www.searchingall.com\u{0a}"))))
(assert (> (str.len X) 10))
(check-sat)
