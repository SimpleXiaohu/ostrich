(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.++ (re.union (re.union (re.union (re.union (re.++ (re.union (re.union (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.* (re.range "0" "2"))) (str.to.re ".")) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.* (re.range "0" "2")))) (str.to.re "$i")) (re.union (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.+ (re.range "0" "2")))) (str.to.re ".")) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "2"))))))
(assert (not (str.in.re IPAddr (re.union (re.++ (re.++ (re.union (re.union (re.++ (re.++ (re.union (re.range "0" "5") (str.to.re "5w%?2")) (re.union (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "2;")) (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "1")))))) (str.to.re ".Q")) (re.++ (re.union (re.range "0" "5") (str.to.re "")) (re.++ (re.union (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "2")) (re.++ (re.union (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "'\x0b'0") (str.to.re "1"))))))) (str.to.re ".")) (re.union (re.union (re.range "0" "5") (str.to.re "I'!>^2")) (re.union (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "2")) (re.++ (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "11"))))))) (str.to.re "A")) (re.++ (re.++ (re.range "0" "5") (str.to.re "552")) (re.union (re.++ (re.++ (re.range "0" "9") (re.range "0" "4")) (str.to.re "")) (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.opt (re.++ (str.to.re "00") (str.to.re "1"))))))))))
(check-sat)