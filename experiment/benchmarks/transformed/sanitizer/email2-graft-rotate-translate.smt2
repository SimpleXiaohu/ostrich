(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 64))
(assert (> (str.len Username) 0))
(assert (<= (str.len Domainname) 256))
(assert (> 0 (str.len Domainname)))
(assert (= Email "9"))
(assert (str.in.re Email (re.++ (re.range "A" "Z") (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (re.++ (re.range "A" "Z") (re.++ (re.++ (re.union (re.union (re.range "0" "9") (re.range "a" "z")) (re.+ (re.++ re.allchar (re.* (str.to.re "I"))))) (re.+ (re.+ (re.union (re.range "A" "Z") (re.union (re.range "0" (str.++ "c" (str.++ Domainname Username))) (re.range "a" "z")))))) (str.to.re "c"))))))))
(assert (not (str.in.re Domainname (re.++ (re.* (str.to.re "I")) re.allchar))))
(check-sat)