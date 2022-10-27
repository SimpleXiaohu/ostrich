(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 64))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) (str.len Domainname)))
(assert (> 256 0))
(assert (= Email "9"))
(assert (str.in.re Email (re.++ (re.++ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.+ (re.++ (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))) (re.* re.allchar)) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" (str.++ (str.++ Domainname "c") Username))))))))
(assert (not (str.in.re Domainname (re.++ (re.++ (str.to.re "c") (str.to.re "@")) (re.* re.allchar)))))
(check-sat)