(set-logic QF_SLIA)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ ((_ re.loop 8 205) (re.++ (re.union (str.to_re "@") (re.union (str.to_re "EC0") (re.union (str.to_re "T") (str.to_re ",b")))) (re.++ (re.union (str.to_re "jF") (re.union (str.to_re "(K") (re.union (str.to_re "!o") (str.to_re "G")))) (re.++ (re.union (str.to_re "hH|") (re.union (str.to_re "B") (re.union (str.to_re "q-W") (str.to_re "&")))) (re.union (str.to_re "<") (re.union (str.to_re "I") (re.union (str.to_re "B-5") (str.to_re "@")))))))) (re.++ ((_ re.loop 15 850) (re.++ (re.union (str.to_re "+tg") (re.union (str.to_re "\\[K") (re.union (str.to_re "P") (str.to_re "g")))) (re.++ (re.union (str.to_re "BXt") (re.union (str.to_re "'") (re.union (str.to_re ">") (str.to_re "-")))) (re.++ (re.union (str.to_re "*F(") (re.union (str.to_re "xB") (re.union (str.to_re "Gw") (str.to_re "'")))) (re.union (str.to_re "Fr") (re.union (str.to_re "FvK") (re.union (str.to_re "\\") (str.to_re "=F")))))))) (re.++ ((_ re.loop 2 788) (re.++ (re.union (str.to_re "Pl") (re.union (str.to_re "Z^k") (re.union (str.to_re "!") (str.to_re "IE")))) (re.++ (re.union (str.to_re "\u0022") (re.union (str.to_re "m") (re.union (str.to_re "1V") (str.to_re "V")))) (re.++ (re.union (str.to_re "{/E") (re.union (str.to_re "EKD") (re.union (str.to_re "\\") (str.to_re "P")))) (re.union (str.to_re "sr$") (re.union (str.to_re "9j") (re.union (str.to_re ">C") (str.to_re "fg")))))))) ((_ re.loop 10 831) (re.++ (re.union (str.to_re "KZ") (re.union (str.to_re "h") (re.union (str.to_re "C7^") (str.to_re "f")))) (re.++ (re.union (str.to_re "GSS") (re.union (str.to_re "~") (re.union (str.to_re "$") (str.to_re "\\z")))) (re.++ (re.union (str.to_re "N") (re.union (str.to_re "(A") (re.union (str.to_re "9Q`") (str.to_re "D")))) (re.union (str.to_re "?V") (re.union (str.to_re "5") (re.union (str.to_re "h") (str.to_re "1&_")))))))))))))
(assert (not (str.in_re var0 (re.++ ((_ re.loop 12 403) (re.++ (re.union (str.to_re "dn") (re.union (str.to_re "58_") (re.union (str.to_re "2!") (str.to_re "?u>")))) (re.++ (re.union (str.to_re "z") (re.union (str.to_re "N4") (re.union (str.to_re "'-/") (str.to_re "w}h")))) (re.++ (re.union (str.to_re "3") (re.union (str.to_re ".") (re.union (str.to_re "v&") (str.to_re "+<j")))) (re.union (str.to_re "b6R") (re.union (str.to_re ":@h") (re.union (str.to_re "@V") (str.to_re "?^[")))))))) (re.++ ((_ re.loop 1 677) (re.++ (re.union (str.to_re "6") (re.union (str.to_re "C&") (re.union (str.to_re "'e") (str.to_re "`")))) (re.++ (re.union (str.to_re "yc&") (re.union (str.to_re "[Bm") (re.union (str.to_re "Gb:") (str.to_re "w}9")))) (re.++ (re.union (str.to_re "9") (re.union (str.to_re "s") (re.union (str.to_re "nm") (str.to_re "_")))) (re.union (str.to_re "olv") (re.union (str.to_re "E") (re.union (str.to_re "+{") (str.to_re "CeA")))))))) (re.++ ((_ re.loop 20 292) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "lZM") (re.union (str.to_re "G~K") (str.to_re "n")))) (re.++ (re.union (str.to_re "dHa") (re.union (str.to_re "dm(") (re.union (str.to_re "YN") (str.to_re "q/r")))) (re.++ (re.union (str.to_re "Y`") (re.union (str.to_re "Ws=") (re.union (str.to_re ";)") (str.to_re "N")))) (re.union (str.to_re "{J#") (re.union (str.to_re "~k") (re.union (str.to_re "S") (str.to_re "}X")))))))) ((_ re.loop 17 975) (re.++ (re.union (str.to_re "<)'") (re.union (str.to_re "U',") (re.union (str.to_re "Q?") (str.to_re "]bH")))) (re.++ (re.union (str.to_re "Z") (re.union (str.to_re "#M\\") (re.union (str.to_re "&*") (str.to_re "h")))) (re.++ (re.union (str.to_re "<") (re.union (str.to_re "w") (re.union (str.to_re "~}") (str.to_re "VE")))) (re.union (str.to_re "rs") (re.union (str.to_re "=T") (re.union (str.to_re "ko5") (str.to_re "o"))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* re.allchar) (re.++ (re.union (str.to_re "<") (re.union (str.to_re ">") (re.union (str.to_re "'") (re.union (str.to_re "\u0022") (str.to_re "&"))))) (re.* re.allchar))))))
(assert (<= 50 (str.len var0)))
(check-sat)
(get-model)