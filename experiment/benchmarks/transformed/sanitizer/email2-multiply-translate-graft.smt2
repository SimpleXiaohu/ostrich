(declare-const Username String)
(declare-const Domainname String)
(declare-const Email String)
(assert (<= (str.len Username) 128))
(assert (> (str.len Username) 0))
(assert (<= 0 512))
(assert (> (str.len Domainname) (str.len Domainname)))
(assert (= Email "9"))
(assert (str.in.re Email (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (str.to.re "nn") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.* re.allchar))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" (str.++ Username (str.++ "nn" Domainname)))))))))))
(assert (not (str.in.re Domainname (re.++ (str.to.re "]]") (re.++ (str.to.re "]]") (re.* re.allchar))))))
(check-sat)