(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.++ (re.* (re.++ (re.++ (re.++ (str.to.re ".") (re.+ (re.++ (re.++ (re.++ (str.to.re ".") (re.* (re.union (re.range "0" "2") (re.union (re.+ (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9"))) (re.union (re.range "0" "2") (str.to.re ".")))))) (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9"))) (re.range "0" "2")))) (re.++ (re.range "0" "9") (re.* (re.* (re.range "0" "9"))))) (re.range "0" "2"))) (re.++ (re.range "0" "9") (re.+ (re.* (re.range "0" "9")))))))
(assert (not (str.in.re IPAddr (re.++ (re.++ (re.++ (re.union (re.range "0" "5") (re.union (re.++ (re.union (str.to.re "52") (re.union (re.range "0" "5") (re.++ (str.to.re ".") (re.++ (re.++ (re.union (re.++ (re.++ (re.range "0" "4") (re.++ (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re ""))))) (re.++ (str.to.re "") (re.range "0" "9")))) (re.range "0" "5")) (re.++ (str.to.re "") (str.to.re "''\t''"))) (str.to.re "z''\x0b''")) (re.++ (re.range "0" "4") (re.union (re.union (re.range "0" "9") (str.to.re "2")) (re.++ (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.opt (re.range "0" "9"))) (re.range "0" "9")))))))) (re.++ (re.range "0" "4") (re.union (re.++ (str.to.re "2") (re.range "0" "9")) (re.union (re.range "0" "9") (re.++ (re.opt (re.++ (str.to.re "1") (str.to.re ""))) (re.opt (re.range "0" "9"))))))) (str.to.re ">"))) (str.to.re "2")) (re.++ (re.range "0" "4") (re.union (re.union (re.range "0" "9") (str.to.re "")) (re.++ (re.++ (re.opt (re.union (str.to.re "") (str.to.re "1"))) (re.opt (re.range "0" "9"))) (re.range "0" "9"))))) (re.range "0" "5")))))
(check-sat)