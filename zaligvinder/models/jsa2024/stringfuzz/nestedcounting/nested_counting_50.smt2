(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 2 14) (str.to_re "&D'")) (re.++ ((_ re.loop 0 18) (str.to_re "N")) (re.++ ((_ re.loop 4 16) (str.to_re "'")) ((_ re.loop 2 15) (str.to_re "mS")))))) (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 4 14) (str.to_re "b")) (re.++ ((_ re.loop 1 19) (str.to_re "T,>")) (re.++ ((_ re.loop 5 20) (str.to_re "1y`")) ((_ re.loop 0 15) (str.to_re ".Aj")))))) (re.++ ((_ re.loop 0 6) (re.++ ((_ re.loop 2 10) (str.to_re "_r")) (re.++ ((_ re.loop 2 12) (str.to_re "]G6")) (re.++ ((_ re.loop 1 18) (str.to_re "@y")) ((_ re.loop 2 13) (str.to_re "?/h")))))) ((_ re.loop 1 2) (re.++ ((_ re.loop 1 12) (str.to_re "6")) (re.++ ((_ re.loop 2 10) (str.to_re "Zji")) (re.++ ((_ re.loop 2 7) (str.to_re "]V%")) ((_ re.loop 3 8) (str.to_re ";j|")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)