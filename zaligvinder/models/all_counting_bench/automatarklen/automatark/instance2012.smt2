(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\u{22}\u{27}]*[\d\x2D]*[^\s\u{22}\u{27}\d\u{2d}]/smi
(assert (not (str.in_re X (re.++ (str.to_re "/xsl:template") (re.* (re.comp (str.to_re ">"))) (str.to_re "priority") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.union (str.to_re "\u{22}") (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "/smi\u{0a}")))))
; ^([A-Z]{2}[9]{3}|[A-Z]{3}[9]{2}|[A-Z]{4}[9]{1}|[A-Z]{5})[0-9]{6}([A-Z]{1}[9]{1}|[A-Z]{2})[A-Z0,9]{3}$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (str.to_re "9"))) (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 2 2) (str.to_re "9"))) (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to_re "9"))) ((_ re.loop 5 5) (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to_re "9"))) ((_ re.loop 2 2) (re.range "A" "Z"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "0") (str.to_re ",") (str.to_re "9"))) (str.to_re "\u{0a}")))))
; ^(19|20)\d\d[-/.]([1-9]|0[1-9]|1[012])[- /.]([1-9]|0[1-9]|[12][0-9]|3[01])$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "/") (str.to_re ".")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
