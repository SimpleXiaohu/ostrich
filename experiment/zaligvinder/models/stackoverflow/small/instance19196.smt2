;test regex (?:(?:.*?):(?:\w{3}(?: \d{1,2}){2}(?::\d{1,2}){2}))(?:\s+?)(?:(?:(?:(?:TYPE1)|(?:(?:TYPE1)|(?:TYPE3))(?:\s+?)(?:(.+){1};(.+){1}))|(?:\S+(?:\.\S+)+)(?:\s+?)(?:(?:TYPE1)|(?:TYPE1)|(?:TYPE3))(?:\s+?)(?:\S+(?:\.\S+)+)(?:\s+?)(?:(.+){1};(.+){1})))
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re " ") ((_ re.loop 1 2) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 2) (re.range "0" "9")))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1"))))) (re.++ (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1"))))) (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "3")))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re ";") ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n"))))))))) (re.++ (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.+ (re.++ (str.to_re ".") (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1"))))) (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1")))))) (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "3")))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}")))))))) (re.+ (re.++ (str.to_re ".") (re.+ (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re ";") ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n")))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)