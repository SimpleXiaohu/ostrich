(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 104))
(assert (> (str.len Username) 0))
(assert (<= (str.to.int Domainname) 474))
(assert (> 0 (str.len Domainname)))
(assert (= Email "?"))
(assert (str.in.re Email (re.++ (re.++ (re.union (re.+ (re.union (re.* (re.++ (re.union (re.range "A" "Z") (re.range "0" "9")) (re.range "a" "z"))) (re.union (str.to.re ";") (re.+ re.allchar)))) (re.+ (re.++ (re.++ (re.range "0" (str.++ (str.++ Domainname "@") Username)) (re.range "A" "Z")) (re.range "a" "z")))) (str.to.re "@")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))
(assert (not (str.in.re Domainname (re.union (re.* re.allchar) (str.to.re ".")))))
(check-sat)