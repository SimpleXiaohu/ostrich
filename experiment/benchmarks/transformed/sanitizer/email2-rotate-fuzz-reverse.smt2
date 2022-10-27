(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 1))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) 509))
(assert (> (str.to.int Domainname) 0))
(assert (= Email (str.++ (str.++ Username Domainname) "")))
(assert (str.in.re Email (re.union (re.range "A" "Z") (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (re.union (re.range "A" "Z") (re.union (re.union (re.++ (re.+ (str.to.re ".")) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.+ (re.+ (re.union (re.range "A" "Z") (re.++ (re.range "a" "z") (re.range "0" "9")))))) (str.to.re ""))))))))
(assert (not (str.in.re Domainname (re.union (re.+ (re.union re.allchar (re.* (str.to.re "{")))) re.allchar))))
(check-sat)