(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 98))
(assert (> (str.to.int Username) 0))
(assert (<= (str.to.int Domainname) 424))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ "" (str.++ Domainname Username))))
(assert (str.in.re Email (re.++ (re.range "A" "Z") (re.union (re.++ (re.range "0" "9") (re.range "a" "z")) (re.+ (re.union (re.range "A" "Z") (re.++ (re.++ (re.union (re.++ (re.range "0" "9") (re.range "a" "z")) (re.* (str.to.re "("))) (re.+ (re.* (re.union (re.range "A" "Z") (re.++ (re.range "0" "9") (re.range "a" "z")))))) (str.to.re ""))))))))
(assert (str.in.re Domainname (re.union (re.range "0" "5") (re.++ (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "1")))))) (re.range "0" "4")) (re.++ (str.to.re "5") (re.++ (re.range "0" "5") (re.++ (re.++ (re.++ (re.union (re.++ (re.range "0" "9") (str.to.re "U")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "V") (str.to.re "1")))))) (re.range "0" "4")) (re.++ (str.to.re "5") (re.++ (re.range "0" "5") (re.union (re.union (re.union (re.union (re.++ (re.range "0" "9") (str.to.re "f")) (re.++ (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "5")))))) (re.range "0" "4")) (re.++ (str.to.re "25") (re.++ (re.++ (re.range "0" "5") (re.++ (re.union (re.union (re.range "0" "9") (str.to.re "")) (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "L") (str.to.re "y")))))) (re.range "0" "4"))) (re.union (str.to.re "@MB") (str.to.re "f"))))) (str.to.re "f"))))) (str.to.re "f"))))))))
(check-sat)