(declare-const IPAddr String)
(assert (str.in.re IPAddr (re.++ (re.union (re.* (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "..") (re.++ (re.++ (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")))) (re.++ (str.to.re "") (re.union (re.union (re.+ (re.range "0" "2")) (re.++ (re.* (re.range "0" "9")) (re.* (re.range "0" "9")))) (re.union (str.to.re "uu") (re.union (re.* (re.range "0" "2")) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))))))))))))
(assert (not (str.in.re IPAddr (re.union (re.++ (re.++ (str.to.re "'\r'a'\x0c'K<B&*|+TQ9r\\cx%cvd'\x0b'^e@%pnu3s.") (re.range "0" "5")) (re.++ (re.union (str.to.re "") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "?[") (str.to.re "11"))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "@") (re.++ (re.++ (re.++ (str.to.re "5") (re.range "0" "5")) (re.union (re.++ (str.to.re "ss") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.union (str.to.re "0") (str.to.re ""))) (re.union (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "") (re.++ (re.++ (re.++ (str.to.re "Zf") (re.range "0" "5")) (re.++ (re.++ (str.to.re "") (re.++ (re.range "0" "4") (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to.re "") (str.to.re ""))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to.re "") (re.++ (re.union (str.to.re "8N!J") (re.range "0" "5")) (re.++ (re.union (str.to.re "") (re.union (re.range "0" "4") (re.range "0" "9"))) (re.union (re.opt (re.++ (str.to.re "B") (str.to.re "(JU"))) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))))))))))))
(check-sat)