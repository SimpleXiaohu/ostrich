(declare-const IPAddr String)
(assert (>= (str.len IPAddr) 18))
(assert (<= (str.to.int IPAddr) 14))
(assert (str.in.re IPAddr (re.++ (re.++ (re.++ (re.union (str.to.re "2PM") (re.union (re.++ (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2"))) (re.++ (re.union (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re ".")))) (re.union (re.* (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))))) (str.to.re "O{")) (re.union (re.* (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))))
(assert (not (str.in.re IPAddr (re.union (re.union (re.union (str.to.re "55u@") (re.range "0" "5")) (re.union (re.union (str.to.re "22") (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.++ (re.union (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.opt (re.union (str.to.re "0") (str.to.re "")))))) (re.union (str.to.re "(*.") (re.union (re.++ (re.union (re.++ (re.union (re.range "0" "4") (re.range "0" "9")) (str.to.re "{E2")) (re.union (re.opt (re.union (str.to.re "yh") (str.to.re "m''\x0c''8/"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.union (str.to.re "522") (re.range "0" "5"))) (re.++ (re.++ (re.++ (re.union (re.union (str.to.re "lwJjCD}2") (re.range "0" "5")) (re.++ (re.union (re.opt (re.++ (str.to.re "1") (str.to.re "00"))) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9"))) (re.union (str.to.re "2f/") (re.union (re.range "0" "4") (re.range "0" "9"))))) (str.to.re "")) (re.union (re.union (str.to.re ")F2") (re.range "0" "5")) (re.++ (re.union (re.opt (re.++ (str.to.re "") (str.to.re "0"))) (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9"))) (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "22"))))) (str.to.re "."))))))))
(check-sat)