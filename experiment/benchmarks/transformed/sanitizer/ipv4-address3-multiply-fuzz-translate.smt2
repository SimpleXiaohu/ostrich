(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.++ (re.union (re.+ (re.range "0" "2")) (re.union (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "kk") (re.union (re.union (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.union (str.to.re "0") (re.union (re.union (re.+ (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.++ (str.to.re "k") (re.++ (re.* (re.range "0" "2")) (re.union (re.* (re.range "0" "9")) (re.* (re.range "0" "9"))))))))))))
(assert (= IPAddr (str.++ o1 (str.++ "k" (str.++ o2 (str.++ "!b" (str.++ o3 (str.++ "(Q" o4))))))))
(assert (and (>= (str.len o1) 1) (>= (str.len o2) 4) (>= (str.len o3) 2) (>= (str.to.int o4) 0)))
(assert (or (= (str.len o1) 3) (= (str.len o2) 2) (= (str.to.int o3) 4) (= (str.len o4) 3)))
(assert (and (<= (str.len o1) 0) (<= (str.len o2) 0) (<= (str.len o3) 1) (<= (str.len o4) 6)))
(check-sat)