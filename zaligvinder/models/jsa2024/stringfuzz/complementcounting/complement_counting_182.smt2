(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (not (str.in_re var0 (re.++ ((_ re.loop 6 401) (re.++ (re.union (str.to_re "XXL") (re.union (str.to_re "Z'$") (re.union (str.to_re "EO)") (str.to_re "S")))) (re.++ (re.union (str.to_re "f") (re.union (str.to_re "*}O") (re.union (str.to_re ":") (str.to_re "rwM")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "}4G") (re.union (str.to_re "\\") (str.to_re "e")))) (re.union (str.to_re "N,=") (re.union (str.to_re "|") (re.union (str.to_re "b~p") (str.to_re "36")))))))) (re.++ ((_ re.loop 12 876) (re.++ (re.union (str.to_re "j`F") (re.union (str.to_re "d(>") (re.union (str.to_re "e|E") (str.to_re "y")))) (re.++ (re.union (str.to_re "Tu") (re.union (str.to_re ">c)") (re.union (str.to_re "YJ") (str.to_re "*")))) (re.++ (re.union (str.to_re "IjN") (re.union (str.to_re "4") (re.union (str.to_re "{,") (str.to_re "=y")))) (re.union (str.to_re "s:") (re.union (str.to_re "f") (re.union (str.to_re ":=") (str.to_re "JrV")))))))) (re.++ ((_ re.loop 18 340) (re.++ (re.union (str.to_re "U]C") (re.union (str.to_re "G") (re.union (str.to_re "c") (str.to_re "@a")))) (re.++ (re.union (str.to_re "&I1") (re.union (str.to_re "fW") (re.union (str.to_re "qQ") (str.to_re "9Mn")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "^") (re.union (str.to_re "Yy") (str.to_re "Iq")))) (re.union (str.to_re "Ki") (re.union (str.to_re "B") (re.union (str.to_re "1") (str.to_re "}C")))))))) ((_ re.loop 18 23) (re.++ (re.union (str.to_re "2") (re.union (str.to_re "s=Y") (re.union (str.to_re "<)F") (str.to_re "q")))) (re.++ (re.union (str.to_re "N5") (re.union (str.to_re "\u0022") (re.union (str.to_re "1w") (str.to_re "<;")))) (re.++ (re.union (str.to_re "+") (re.union (str.to_re "1<") (re.union (str.to_re "s$;") (str.to_re "2Bo")))) (re.union (str.to_re "'n") (re.union (str.to_re "{") (re.union (str.to_re "+WG") (str.to_re "S"))))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 6 713) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "<e:") (re.union (str.to_re "v") (str.to_re "tr")))) (re.++ (re.union (str.to_re "7") (re.union (str.to_re "#i") (re.union (str.to_re "7") (str.to_re "M")))) (re.++ (re.union (str.to_re "/") (re.union (str.to_re "U") (re.union (str.to_re "i`") (str.to_re "W^")))) (re.union (str.to_re "h1/") (re.union (str.to_re "g") (re.union (str.to_re "[") (str.to_re "4")))))))) (re.++ ((_ re.loop 13 693) (re.++ (re.union (str.to_re "`11") (re.union (str.to_re "x") (re.union (str.to_re ")") (str.to_re "pQ^")))) (re.++ (re.union (str.to_re "R") (re.union (str.to_re "T") (re.union (str.to_re "b") (str.to_re "\u0022%\\")))) (re.++ (re.union (str.to_re "2p^") (re.union (str.to_re "R") (re.union (str.to_re "_s") (str.to_re "\u0022M")))) (re.union (str.to_re "mwt") (re.union (str.to_re "|") (re.union (str.to_re "$?5") (str.to_re "q")))))))) (re.++ ((_ re.loop 20 669) (re.++ (re.union (str.to_re ")u") (re.union (str.to_re "$") (re.union (str.to_re "u") (str.to_re "d")))) (re.++ (re.union (str.to_re "O9") (re.union (str.to_re "Yps") (re.union (str.to_re "Occ") (str.to_re "_.G")))) (re.++ (re.union (str.to_re "2") (re.union (str.to_re "0") (re.union (str.to_re "]") (str.to_re ",")))) (re.union (str.to_re "r") (re.union (str.to_re "]9") (re.union (str.to_re "L6") (str.to_re "tXY")))))))) ((_ re.loop 13 184) (re.++ (re.union (str.to_re "0gb") (re.union (str.to_re "m") (re.union (str.to_re "m6") (str.to_re ",t~")))) (re.++ (re.union (str.to_re "xz") (re.union (str.to_re "+}") (re.union (str.to_re "b") (str.to_re ")")))) (re.++ (re.union (str.to_re "$l") (re.union (str.to_re "+P") (re.union (str.to_re "-1") (str.to_re "K")))) (re.union (str.to_re "0na") (re.union (str.to_re "HF") (re.union (str.to_re "Q:S") (str.to_re "[_4"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)