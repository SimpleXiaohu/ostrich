(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 10 920) (re.++ (re.union (str.to_re "w") (re.union (str.to_re "8") (re.union (str.to_re "]1x") (str.to_re "-S")))) (re.++ (re.union (str.to_re "WfN") (re.union (str.to_re "Xl") (re.union (str.to_re "?{B") (str.to_re ">")))) (re.++ (re.union (str.to_re "`") (re.union (str.to_re "z") (re.union (str.to_re "H]") (str.to_re "4;S")))) (re.union (str.to_re "N") (re.union (str.to_re "Ek0") (re.union (str.to_re "yo_") (str.to_re "0*,")))))))) (re.++ ((_ re.loop 18 923) (re.++ (re.union (str.to_re "c,") (re.union (str.to_re "G]\\") (re.union (str.to_re "qr0") (str.to_re "t")))) (re.++ (re.union (str.to_re "<[") (re.union (str.to_re "3w") (re.union (str.to_re "dOU") (str.to_re "<8W")))) (re.++ (re.union (str.to_re "a/+") (re.union (str.to_re "_a") (re.union (str.to_re "a^l") (str.to_re "+|")))) (re.union (str.to_re "*") (re.union (str.to_re "J") (re.union (str.to_re "(?q") (str.to_re "z.")))))))) (re.++ ((_ re.loop 7 23) (re.++ (re.union (str.to_re "#m") (re.union (str.to_re "GX") (re.union (str.to_re ",}`") (str.to_re "MT")))) (re.++ (re.union (str.to_re "GU") (re.union (str.to_re "E4") (re.union (str.to_re "M") (str.to_re "N1")))) (re.++ (re.union (str.to_re "U4") (re.union (str.to_re "*1(") (re.union (str.to_re "Ad") (str.to_re "2+")))) (re.union (str.to_re "&FI") (re.union (str.to_re ")`") (re.union (str.to_re "l") (str.to_re "n")))))))) ((_ re.loop 20 37) (re.++ (re.union (str.to_re "N7") (re.union (str.to_re "+") (re.union (str.to_re ";ZF") (str.to_re "-T")))) (re.++ (re.union (str.to_re "$") (re.union (str.to_re "/") (re.union (str.to_re "J") (str.to_re "q")))) (re.++ (re.union (str.to_re "B&") (re.union (str.to_re "UeQ") (re.union (str.to_re "<+S") (str.to_re "L")))) (re.union (str.to_re "X0") (re.union (str.to_re "Yt") (re.union (str.to_re "^") (str.to_re "g<_")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 8 456) (re.++ (re.union (str.to_re "Xlo") (re.union (str.to_re "31") (re.union (str.to_re "8AR") (str.to_re "t")))) (re.++ (re.union (str.to_re "k8a") (re.union (str.to_re "hXK") (re.union (str.to_re "C&[") (str.to_re "Q")))) (re.++ (re.union (str.to_re "4F/") (re.union (str.to_re "?B") (re.union (str.to_re "l1") (str.to_re "HMa")))) (re.union (str.to_re "M") (re.union (str.to_re ">#") (re.union (str.to_re "]e6") (str.to_re "}")))))))) (re.++ ((_ re.loop 0 424) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "7af") (re.union (str.to_re ":o\u0022") (str.to_re "p")))) (re.++ (re.union (str.to_re "+>") (re.union (str.to_re ";d") (re.union (str.to_re "]tm") (str.to_re "f'e")))) (re.++ (re.union (str.to_re "lR") (re.union (str.to_re "x2") (re.union (str.to_re "O*") (str.to_re "Nc")))) (re.union (str.to_re "ojp") (re.union (str.to_re "@[") (re.union (str.to_re "Jxt") (str.to_re "RB")))))))) (re.++ ((_ re.loop 13 262) (re.++ (re.union (str.to_re "T~") (re.union (str.to_re "|") (re.union (str.to_re "]") (str.to_re "(")))) (re.++ (re.union (str.to_re "=1") (re.union (str.to_re "u_") (re.union (str.to_re "_P") (str.to_re "s~")))) (re.++ (re.union (str.to_re "-%l") (re.union (str.to_re "slD") (re.union (str.to_re "'") (str.to_re "=")))) (re.union (str.to_re "4") (re.union (str.to_re "I&=") (re.union (str.to_re "I") (str.to_re "AR-")))))))) ((_ re.loop 17 156) (re.++ (re.union (str.to_re ">{") (re.union (str.to_re "C") (re.union (str.to_re "5") (str.to_re "#{}")))) (re.++ (re.union (str.to_re ",Ex") (re.union (str.to_re "Q") (re.union (str.to_re "3") (str.to_re "e")))) (re.++ (re.union (str.to_re "x[") (re.union (str.to_re "P3") (re.union (str.to_re "B5\\") (str.to_re "18")))) (re.union (str.to_re "2") (re.union (str.to_re "p") (re.union (str.to_re "=") (str.to_re "vUo"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)