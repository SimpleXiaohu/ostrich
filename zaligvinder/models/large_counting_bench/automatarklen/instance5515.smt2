(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(((h|H)(t|T))(t|T)(p|P)((s|S)?)\:\/\/)?((www|WWW)+\.)+(([0-9]{1,3}){3}[0-9]{1,3}\.|([\w!~*'()-]+\.)*([\w^-][\w-]{0,61})?[\w]\.[a-z]{2,6})(:[0-9]{1,4})?((\/*)|(\/+[\w!~*'().;?:@&=+$,%#-]+)+\/*)$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "t") (str.to_re "T")) (re.union (str.to_re "p") (str.to_re "P")) (re.opt (re.union (str.to_re "s") (str.to_re "S"))) (str.to_re "://") (re.union (str.to_re "h") (str.to_re "H")) (re.union (str.to_re "t") (str.to_re "T")))) (re.+ (re.++ (re.+ (re.union (str.to_re "www") (str.to_re "WWW"))) (str.to_re "."))) (re.union (re.++ ((_ re.loop 3 3) ((_ re.loop 1 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".")) (re.++ (re.* (re.++ (re.+ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "*") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.opt (re.++ (re.union (str.to_re "^") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 0 61) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re ".") ((_ re.loop 2 6) (re.range "a" "z")))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.range "0" "9")))) (re.union (re.* (str.to_re "/")) (re.++ (re.+ (re.++ (re.+ (str.to_re "/")) (re.+ (re.union (str.to_re "!") (str.to_re "~") (str.to_re "*") (str.to_re "'") (str.to_re "(") (str.to_re ")") (str.to_re ".") (str.to_re ";") (str.to_re "?") (str.to_re ":") (str.to_re "@") (str.to_re "&") (str.to_re "=") (str.to_re "+") (str.to_re "$") (str.to_re ",") (str.to_re "%") (str.to_re "#") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.* (str.to_re "/")))) (str.to_re "\u{0a}")))))
; /\)\r\nHost\u{3a}\u{20}[a-z\d\u{2e}\u{2d}]{6,32}\r\nCache\u{2d}Control\u{3a}\u{20}no\u{2d}cache\r\n\r\n$/
(assert (not (str.in_re X (re.++ (str.to_re "/)\u{0d}\u{0a}Host: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re ".") (str.to_re "-"))) (str.to_re "\u{0d}\u{0a}Cache-Control: no-cache\u{0d}\u{0a}\u{0d}\u{0a}/\u{0a}")))))
; ^\s*[a-zA-Z0-9,\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))
(assert (< 200 (str.len X)))
(check-sat)
