(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.union (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.++ (re.+ (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re ".") (re.++ (re.union (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.union (re.union (str.to.re "n7") (re.range "0" "5")) (re.++ (re.++ (str.to.re "7") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "Q") (str.to.re "@"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re ".") (re.union (re.union (re.++ (str.to.re "L") (re.range "0" "5")) (re.++ (re.union (str.to.re "") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "7") (re.++ (re.++ (re.++ (str.to.re "5") (re.range "0" "5")) (re.union (re.++ (str.to.re "2") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re ",") (str.to.re "1"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "c") (re.union (re.union (str.to.re "r'\x0c'") (re.range "0" "5")) (re.++ (re.union (str.to.re "I") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "R"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))))))))))))
(check-sat)