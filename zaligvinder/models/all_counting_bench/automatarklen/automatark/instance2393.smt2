(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(0{0,1}[1-9][0-9]){1}(\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}([0-9]{3}|[0-9]{4})(\-){0,1}(\s){0,1}[0-9]{4}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; NavExcel\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "NavExcel") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "dist.atlas-ia.com\u{0a}")))))
; (\/\*[\s\S.]+?\*\/|[/]{2,}.*|\/((\\\/)|.??)*\/[gim]{0,3}|'((\\\')|.??)*'|"((\\\")|.??)*"|-?\d+\.\d+e?-?e?\d*|-?\.\d+e-?\d+|\w+|[\[\]\(\)\{\}:=;"'\-&!|+,.\/*])
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "/*") (re.+ (re.union (re.comp (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "*/")) (re.++ (re.* re.allchar) ((_ re.loop 2 2) (str.to_re "/")) (re.* (str.to_re "/"))) (re.++ (str.to_re "/") (re.* (re.union (str.to_re "\u{5c}/") (re.opt re.allchar))) (str.to_re "/") ((_ re.loop 0 3) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m")))) (re.++ (str.to_re "'") (re.* (re.union (str.to_re "\u{5c}'") (re.opt re.allchar))) (str.to_re "'")) (re.++ (str.to_re "\u{22}") (re.* (re.union (str.to_re "\u{5c}\u{22}") (re.opt re.allchar))) (str.to_re "\u{22}")) (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re ".") (re.+ (re.range "0" "9")) (re.opt (str.to_re "e")) (re.opt (str.to_re "-")) (re.opt (str.to_re "e")) (re.* (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "e") (re.opt (str.to_re "-")) (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "{") (str.to_re "}") (str.to_re ":") (str.to_re "=") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "-") (str.to_re "&") (str.to_re "!") (str.to_re "|") (str.to_re "+") (str.to_re ",") (str.to_re ".") (str.to_re "/") (str.to_re "*")) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
