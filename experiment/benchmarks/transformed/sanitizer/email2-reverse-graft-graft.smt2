(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 64))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) (str.len Domainname)))
(assert (> 0 256))
(assert (= Email (str.++ "0" Username)))
(assert (str.in.re Email (re.++ (re.++ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "9" (str.++ Domainname "@"))))))))
(assert (not (str.in.re Domainname (str.to.re "."))))
(check-sat)