(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 14 248) (re.++ (re.union (str.to_re "#H") (re.union (str.to_re "sh") (re.union (str.to_re "Gqc") (str.to_re "#")))) (re.++ (re.union (str.to_re "YPO") (re.union (str.to_re "u_") (re.union (str.to_re "lu") (str.to_re "U")))) (re.++ (re.union (str.to_re "n") (re.union (str.to_re "9") (re.union (str.to_re "d") (str.to_re "V]")))) (re.union (str.to_re "q") (re.union (str.to_re "]") (re.union (str.to_re "C:") (str.to_re "emP")))))))) (re.++ ((_ re.loop 8 339) (re.++ (re.union (str.to_re "}Ne") (re.union (str.to_re "C") (re.union (str.to_re "+q") (str.to_re "7")))) (re.++ (re.union (str.to_re "}Y") (re.union (str.to_re "!&") (re.union (str.to_re "JRb") (str.to_re "!")))) (re.++ (re.union (str.to_re "/'") (re.union (str.to_re "K") (re.union (str.to_re "Xo0") (str.to_re "DXv")))) (re.union (str.to_re "+%") (re.union (str.to_re "d*R") (re.union (str.to_re "ZbM") (str.to_re ",")))))))) (re.++ ((_ re.loop 1 387) (re.++ (re.union (str.to_re "&`") (re.union (str.to_re "?3") (re.union (str.to_re "S") (str.to_re "Sv")))) (re.++ (re.union (str.to_re "C") (re.union (str.to_re "6_") (re.union (str.to_re ">") (str.to_re "bH{")))) (re.++ (re.union (str.to_re "'") (re.union (str.to_re ";h") (re.union (str.to_re "\\[I") (str.to_re "K")))) (re.union (str.to_re "'") (re.union (str.to_re "6.{") (re.union (str.to_re "_d") (str.to_re "<;")))))))) ((_ re.loop 8 387) (re.++ (re.union (str.to_re "L)") (re.union (str.to_re "}c") (re.union (str.to_re "Y>l") (str.to_re "\\aW")))) (re.++ (re.union (str.to_re ",\\") (re.union (str.to_re "G") (re.union (str.to_re "d") (str.to_re "BX")))) (re.++ (re.union (str.to_re "HJ") (re.union (str.to_re "6") (re.union (str.to_re "0[1") (str.to_re "%Tt")))) (re.union (str.to_re "#);") (re.union (str.to_re "2.#") (re.union (str.to_re "(") (str.to_re "%"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 2 422) (re.++ (re.union (str.to_re "c@") (re.union (str.to_re "wKI") (re.union (str.to_re "1.4") (str.to_re "~v{")))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re "#gm") (re.union (str.to_re "(") (str.to_re ")")))) (re.++ (re.union (str.to_re "E") (re.union (str.to_re "NsK") (re.union (str.to_re "5(") (str.to_re "W8I")))) (re.union (str.to_re "p") (re.union (str.to_re "'") (re.union (str.to_re "[Xt") (str.to_re "[Bf")))))))) (re.++ ((_ re.loop 11 959) (re.++ (re.union (str.to_re "al:") (re.union (str.to_re "G") (re.union (str.to_re "^\\") (str.to_re "5v")))) (re.++ (re.union (str.to_re "1") (re.union (str.to_re "i") (re.union (str.to_re "_\u0022") (str.to_re "o")))) (re.++ (re.union (str.to_re "v") (re.union (str.to_re "fnU") (re.union (str.to_re "U*V") (str.to_re "4A")))) (re.union (str.to_re "E?v") (re.union (str.to_re "#") (re.union (str.to_re "?E") (str.to_re "UIg")))))))) (re.++ ((_ re.loop 6 181) (re.++ (re.union (str.to_re "-0l") (re.union (str.to_re "2(") (re.union (str.to_re "1") (str.to_re "r-~")))) (re.++ (re.union (str.to_re "N") (re.union (str.to_re "3") (re.union (str.to_re "N") (str.to_re "Ug")))) (re.++ (re.union (str.to_re "^") (re.union (str.to_re "F+") (re.union (str.to_re "zs+") (str.to_re "!g")))) (re.union (str.to_re "Eo;") (re.union (str.to_re "I") (re.union (str.to_re "P") (str.to_re "3")))))))) ((_ re.loop 14 691) (re.++ (re.union (str.to_re "M\\") (re.union (str.to_re "6Yp") (re.union (str.to_re "-") (str.to_re "(")))) (re.++ (re.union (str.to_re "+}") (re.union (str.to_re ".e") (re.union (str.to_re "I") (str.to_re "z6")))) (re.++ (re.union (str.to_re "U") (re.union (str.to_re "x") (re.union (str.to_re "'") (str.to_re "AKz")))) (re.union (str.to_re "S&") (re.union (str.to_re "EU") (re.union (str.to_re "H") (str.to_re "%AF"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)
