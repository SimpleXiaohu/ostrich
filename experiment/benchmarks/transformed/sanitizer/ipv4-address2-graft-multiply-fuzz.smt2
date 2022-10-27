(declare-const IPAddr String)
(assert (>= (str.to.int IPAddr) 11))
(assert (<= 52 (str.len IPAddr)))
(assert (str.in.re IPAddr (re.++ (re.union (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.++ (str.to.re ":rd") (re.union (re.++ (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "af") (re.++ (re.union (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re ".") (re.union (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.++ (re.union (re.++ (str.to.re "wZ\\`>e>9") (re.range "0" "5")) (re.++ (re.union (str.to.re "uJ2") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re ")0") (str.to.re "n_1"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "]") (re.++ (re.union (re.union (str.to.re "2MP_Me5") (re.range "0" "5")) (re.union (re.union (str.to.re "T") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "i90") (str.to.re ":A1"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "ou") (re.++ (re.++ (re.union (str.to.re "g'\x0c'") (re.range "0" "5")) (re.++ (re.++ (str.to.re "a2") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "") (str.to.re "1"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.union (str.to.re "'\n'") (re.++ (re.union (str.to.re "2h'\r'-&0") (re.range "0" "5")) (re.++ (re.++ (str.to.re "{:2") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "}f0") (re.union (re.range "0" "9") (re.opt (re.range "0" "9"))))) (str.to.re "1")))))))))))))
(check-sat)