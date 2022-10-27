(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 64))
(assert (> 0 (str.len Username)))
(assert (<= (str.len Domainname) 256))
(assert (> 0 (str.len Domainname)))
(assert (= Email (str.++ Username "9")))
(assert (str.in.re Email (re.++ (re.range "A" "Z") (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (re.++ (re.range "A" "Z") (re.++ (re.++ (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (str.to.re "."))) (re.+ (re.+ (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.range "a" "z")))))) (str.to.re "@"))))))))
(assert (str.in.re Domainname (re.++ (re.range "0" "5") (re.++ (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "1")))))) (re.range "0" "4")) (re.union (str.to.re "25") (re.++ (re.range "0" "5") (re.++ (re.++ (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "1")))))) (re.range "0" "4")) (re.union (str.to.re "25") (re.++ (re.range "0" "5") (re.++ (re.++ (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "1")))))) (re.range "0" "4")) (re.union (str.to.re "25") (re.++ (re.++ (re.range "0" "5") (re.union (re.++ (re.range "0" "@") (re.++ (re.range "0" "9") (re.++ (re.opt (str.to.re "0")) (re.opt (re.union (re.++ (re.range "0" "9") (str.to.re "1")) (re.range "0" "4")))))) (str.to.re "2"))) (re.union (str.to.re "25") (str.to.re "."))))) (str.to.re "."))))) (str.to.re "."))))))))
(check-sat)