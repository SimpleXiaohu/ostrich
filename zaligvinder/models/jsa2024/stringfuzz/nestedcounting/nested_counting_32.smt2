(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 3 5) (str.to_re "1LD")) (re.++ ((_ re.loop 0 18) (str.to_re "`LF")) (re.++ ((_ re.loop 4 16) (str.to_re "/")) ((_ re.loop 4 20) (str.to_re "rm")))))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 7) (str.to_re "]u")) (re.++ ((_ re.loop 4 14) (str.to_re "p")) (re.++ ((_ re.loop 5 16) (str.to_re "k")) ((_ re.loop 2 20) (str.to_re "!QW")))))) (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 4 11) (str.to_re "7*N")) (re.++ ((_ re.loop 2 6) (str.to_re "FA")) (re.++ ((_ re.loop 1 8) (str.to_re "tfY")) ((_ re.loop 0 12) (str.to_re "mL7")))))) ((_ re.loop 0 5) (re.++ ((_ re.loop 0 11) (str.to_re "@")) (re.++ ((_ re.loop 5 17) (str.to_re "3X")) (re.++ ((_ re.loop 2 5) (str.to_re "C]")) ((_ re.loop 4 13) (str.to_re "@fu")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
