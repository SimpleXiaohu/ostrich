(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}webm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".webm/i\u{0a}")))))
; (((ht|f)tp(s?):\/\/)|(www\.[^ \[\]\(\)\n\r\t]+)|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})\/)([^ \[\]\(\),;"'<>\n\r\t]+)([^\. \[\]\(\),;"'<>\n\r\t])|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (str.to_re "www.") (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}")))) (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9"))))))
; \(([0-9]{2}|0{1}((x|[0-9]){2}[0-9]{2}))\)\s*[0-9]{3,4}[- ]*[0-9]{4}
(assert (not (str.in_re X (re.++ (str.to_re "(") (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 2 2) (re.union (str.to_re "x") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 4) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (str.to_re "D") (str.to_re "J") (str.to_re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)