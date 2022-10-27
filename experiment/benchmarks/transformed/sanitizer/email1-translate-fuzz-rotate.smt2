(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 60))
(assert (> (str.len Username) 0))
(assert (<= (str.to.int Domainname) 465))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ "Z" (str.++ Domainname Username))))
(assert (str.in.re Email (re.union (re.range "A" "Z") (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (re.++ (re.range "A" "Z") (re.++ (re.++ (re.++ (re.++ (re.range "0" "9") (re.range "a" "z")) (re.+ (str.to.re ""))) (re.+ (re.+ (re.++ (re.range "A" "Z") (re.union (re.range "0" "9") (re.range "a" "z")))))) (str.to.re "Z"))))))))
(assert (str.in.re Domainname (re.++ (re.range "0" "5") (re.union (re.++ (re.union (re.union (re.range "0" "9") (str.to.re "i")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "") (str.to.re "")))))) (re.range "0" "4")) (re.++ (str.to.re "2jk") (re.++ (re.range "0" "5") (re.++ (re.++ (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.++ (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.union (str.to.re "0") (str.to.re "")))))) (re.range "0" "4")) (re.union (str.to.re "mV") (re.union (re.range "0" "5") (re.union (re.++ (re.++ (re.++ (re.++ (re.range "0" "9") (str.to.re "")) (re.union (re.range "0" "9") (re.++ (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "C") (str.to.re "#")))))) (re.range "0" "4")) (re.union (str.to.re "5") (re.union (re.union (re.range "0" "5") (re.union (re.++ (re.++ (re.range "0" "9") (str.to.re "2")) (re.union (re.range "0" "9") (re.union (re.opt (re.range "0" "9")) (re.opt (re.++ (str.to.re "") (str.to.re "1")))))) (re.range "0" "4"))) (re.++ (str.to.re "2") (str.to.re ""))))) (str.to.re ""))))) (str.to.re ""))))))))
(check-sat)