(declare-const IPAddr String)
(declare-const o1 String)
(declare-const o2 String)
(declare-const o3 String)
(declare-const o4 String)
(assert (str.in.re IPAddr (re.++ (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.+ (re.++ (re.range "0" "2") (re.++ (re.union (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.union (re.* (re.++ (re.range "0" "2") (re.union (re.union (re.+ (re.+ (re.range "0" "9"))) (re.range "0" "9")) (re.++ (re.+ (re.union (re.range "0" "2") (re.union (re.+ (re.++ (re.* (re.+ (re.range "0" "9"))) (re.range "0" "9"))) (re.++ (re.range "0" "2") (str.to.re ","))))) (str.to.re ","))))) (str.to.re ","))))))))
(assert (= IPAddr (str.++ "9" (str.++ (str.++ (str.++ (str.++ (str.++ o4 o3) ",") o2) "") o1))))
(assert (and (>= (str.to.int o1) 2) (>= (str.to.int o2) 2) (>= (str.len o3) 2) (>= (str.to.int o4) 1)))
(assert (or (= (str.len o1) 2) (= (str.to.int o2) 1) (= (str.to.int o3) 2) (= (str.to.int o4) 2)))
(assert (and (<= (str.len o1) 3) (<= (str.len o2) 0) (<= (str.len o3) 2) (<= (str.to.int o4) 2)))
(check-sat)