(declare-const IPAddr String)
(assert (>= (str.len IPAddr) 28))
(assert (<= (str.to.int IPAddr) 108))
(assert (str.in.re IPAddr (re.++ (re.++ (re.+ (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "xxxx") (re.union (re.union (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.++ (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "5555") (re.++ (re.+ (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.++ (re.++ (str.to.re "^^^^????") (re.range "0" "5")) (re.++ (re.union (str.to.re "2222") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "") (str.to.re ""))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "....") (re.++ (re.union (re.++ (str.to.re "mmmm") (re.range "0" "5")) (re.union (re.++ (str.to.re "::::") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "\\\\\\\\") (str.to.re "1111"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "....") (re.union (re.++ (re.union (str.to.re "22225555") (re.range "0" "5")) (re.++ (re.union (str.to.re "2222") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "0000") (str.to.re ""))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "....") (re.union (re.union (str.to.re "xxxx") (re.range "0" "5")) (re.++ (re.++ (str.to.re "XXXX") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "((((") (str.to.re ""))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))))))))))))
(check-sat)