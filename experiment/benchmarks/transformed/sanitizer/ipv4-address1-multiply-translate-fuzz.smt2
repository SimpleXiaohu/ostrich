(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.union (re.union (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.union (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.++ (str.to.re "'") (re.++ (re.union (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "`*>") (re.union (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.++ (re.union (str.to.re "ZEY%5") (re.range "0" "5")) (re.++ (re.++ (str.to.re "4P") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "0") (str.to.re "11"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "'\x0b'-") (re.union (re.++ (re.++ (str.to.re "2h5") (re.range "0" "5")) (re.++ (re.union (str.to.re "2R") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "E?0") (str.to.re "'\t'b"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "A") (re.++ (re.union (re.union (str.to.re "KtrH""e") (re.range "0" "5")) (re.++ (re.union (str.to.re "E") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "'-") (str.to.re "1"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "!") (re.union (re.++ (str.to.re "&3(5") (re.range "0" "5")) (re.++ (re.union (str.to.re "'\x0b'D") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "E'\x0c'") (str.to.re "&/1"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))))))))))))
(check-sat)