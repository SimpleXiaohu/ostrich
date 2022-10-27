(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.to.int Username) 75))
(assert (> 0 (str.to.int Username)))
(assert (<= (str.to.int Domainname) 339))
(assert (> (str.len Domainname) 0))
(assert (= Email (str.++ "9" Username)))
(assert (str.in.re Email (re.++ (re.union (re.++ (re.+ (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.* (re.union (str.to.re ".") (re.* (re.union (re.range "a" "z") (re.++ (re.range "A" "Z") (re.range "0" "9"))))))) (str.to.re "@")) (re.* (re.++ (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))
(assert (str.in.re Domainname (re.union (re.++ (re.++ (re.++ (re.++ (re.union (re.union (re.union (re.range "0" "5") (str.to.re "52")) (re.++ (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "6")) (re.++ (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.union (str.to.re "*") (str.to.re "1")))))) (str.to.re "")) (re.union (re.union (re.range "0" "5") (str.to.re "|2")) (re.++ (re.union (re.union (re.range "0" "9") (re.range "0" "4")) (str.to.re "2")) (re.++ (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "B"))))))) (str.to.re ".")) (re.++ (re.++ (re.range "0" "5") (str.to.re "O")) (re.++ (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "g")) (re.union (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "0") (str.to.re "1"))))))) (str.to.re ".")) (re.union (re.union (re.range "0" "5") (str.to.re "%2")) (re.++ (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (re.union (str.to.re "0") (str.to.re "''\r''"))) (re.++ (re.++ (re.opt (re.range "0" (str.++ Domainname "@"))) (re.range "0" "9")) (re.opt (str.to.re "2"))))))))
(check-sat)