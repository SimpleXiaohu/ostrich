(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 8) (str.to_re "sq")) (re.++ ((_ re.loop 0 20) (str.to_re "Dfu")) (re.++ ((_ re.loop 5 17) (str.to_re "h*")) ((_ re.loop 2 9) (str.to_re "q<")))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 0 20) (str.to_re "zR;")) (re.++ ((_ re.loop 3 15) (str.to_re ":")) (re.++ ((_ re.loop 5 13) (str.to_re "X")) ((_ re.loop 4 13) (str.to_re "{$")))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 3 6) (str.to_re "2")) (re.++ ((_ re.loop 2 16) (str.to_re "D")) (re.++ ((_ re.loop 4 10) (str.to_re "Lv%")) ((_ re.loop 2 18) (str.to_re "2w")))))) ((_ re.loop 1 3) (re.++ ((_ re.loop 1 12) (str.to_re "'")) (re.++ ((_ re.loop 2 6) (str.to_re "T}")) (re.++ ((_ re.loop 5 14) (str.to_re "w")) ((_ re.loop 5 13) (str.to_re "nz")))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)