(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.union (re.union (re.range "0" "9") (re.* (re.range "0" "2"))) (re.+ (re.union (re.union (str.to.re ".") (re.union (re.+ (re.union (re.++ (re.union (re.+ (re.range "0" "9")) (re.* (re.++ (re.range "0" "9") (re.* (re.range "0" "2"))))) (re.union (re.range "0" "9") (str.to.re "."))) (re.++ (re.* (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.* (re.range "0" "2"))))))) (str.to.re "'\t'"))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (re.* (re.range "0" "2"))))))))))
(assert (= IPAddr (str.++ o3 (str.++ (str.++ o4 ".") (str.++ (str.++ o2 (str.++ "1" "")) o1)))))
(assert (and (>= (str.to.int o1) 1) (>= (str.len o2) 2) (>= (str.to.int o3) 1) (>= (str.len o4) 0)))
(assert (or (= (str.len o1) 0) (= (str.to.int o2) 1) (= (str.len o3) 0) (= (str.to.int o4) 2)))
(assert (and (<= (str.len o1) 5) (<= (str.to.int o2) 1) (<= (str.len o3) 3) (<= (str.to.int o4) 2)))
(check-sat)