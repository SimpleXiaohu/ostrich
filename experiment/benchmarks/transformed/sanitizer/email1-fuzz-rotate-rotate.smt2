(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 48))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) 48))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ Domainname (str.++ Username ""))))
(assert (str.in.re Email (re.union (re.union (re.range "a" "z") (re.* (re.union (re.++ (re.++ (re.+ (str.to.re "")) (re.++ (re.range "0" "9") (re.+ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z"))))))) (str.to.re "@")) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.++ (re.range "0" "9") (re.range "A" "Z")))))
(assert (str.in.re Domainname (re.union (re.union (re.union (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.union (re.++ (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.union (re.++ (re.union (re.union (re.union (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.range "0" "9"))) (re.union (re.range "0" "9") (re.range "0" "4"))) (re.++ (re.++ (re.union (re.++ (re.++ (re.union (re.union (re.++ (re.opt (re.range "0" "9")) (re.union (re.opt (re.++ (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.range "0" "4"))) (re.range "0" "5")) (re.++ (str.to.re "") (str.to.re ""))) (re.union (str.to.re "k") (str.to.re "2"))) (re.++ (str.to.re "") (str.to.re ""))) (re.range "0" "5")) (str.to.re ""))) (re.++ (str.to.re "[") (str.to.re "."))) (re.range "0" "5")) (str.to.re "'''\t'''/")))) (re.++ (str.to.re "2") (re.range "0" "5")))))
(check-sat)