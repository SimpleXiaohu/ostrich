(declare-const IPAddr String)
(assert (>= (str.to.int IPAddr) 8))
(assert (<= (str.len IPAddr) 9))
(assert (str.in.re IPAddr (re.union (re.union (str.to.re "x") (re.++ (re.union (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "") (re.++ (re.++ (str.to.re "") (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2")))) (re.union (re.union (re.* (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2"))))))) (re.union (re.union (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "2"))))))
(assert (not (str.in.re IPAddr (re.union (re.++ (re.++ (re.union (str.to.re "") (re.++ (re.++ (re.union (re.++ (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "t")))) (re.union (str.to.re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to.re "6s") (re.range "0" "5"))) (re.++ (str.to.re "") (re.union (re.union (str.to.re "x") (re.range "0" "5")) (re.++ (re.union (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.union (re.opt (re.range "0" "9")) (re.range "0" "9"))) (re.union (re.union (re.range "0" "9") (re.range "0" "4")) (str.to.re "K"))))))) (re.union (re.++ (re.range "0" "5") (str.to.re "&")) (re.++ (re.++ (re.++ (re.range "0" "4") (re.range "0" "9")) (str.to.re "J")) (re.union (re.opt (re.++ (str.to.re "#") (str.to.re "1"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9"))))))) (str.to.re ".")) (re.union (re.++ (re.union (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "")))) (re.++ (str.to.re "2") (re.++ (re.range "0" "9") (re.range "0" "4")))) (re.++ (re.range "0" "5") (str.to.re ";E^")))))))
(check-sat)