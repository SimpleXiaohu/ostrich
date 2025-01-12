(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Dmitry Blotsky1, Federico Mora, Murphy Berzish, Yunhui Zheng, Ifaz Kabir, Vijay Ganesh, Zhengyang Lu
Generated on: 2018-01-24
Generator: StringFuzz
Application: Evaluate string solvers
Target solver: Z3str3, CVC4, Z3str2, Norn
Publications: Blotsky, D., Mora, F., Berzish, M., Zheng, Y., Kabir, I., & Ganesh, V. (2018). Stringfuzz: A fuzzer for string solvers. In CAV 2018.
Description: new instance generated by StringFuzz, a modular string and regex fuzzer
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "random")
(set-info :status unknown)

(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.+ (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "4")) (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.+ (re.* (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "88"))) (re.++ (re.+ (re.* (str.to_re "99"))) (re.++ (re.+ (re.* (str.to_re "aa"))) (re.++ (re.union (re.* (str.to_re "b")) (re.* (str.to_re "c"))) (re.++ (re.union (re.* (str.to_re "ddd")) (re.union (str.to_re "e") (str.to_re "fff"))) (re.++ (re.union (re.union (str.to_re "g") (str.to_re "hh")) (re.+ (str.to_re "i"))) (re.++ (re.+ (re.+ (str.to_re "jjj"))) (re.++ (re.+ (re.* (str.to_re "k"))) (re.++ (re.+ (re.union (str.to_re "ll") (str.to_re "mmm"))) (re.++ (re.* (re.union (str.to_re "nn") (str.to_re "oo"))) (re.++ (re.* (re.union (str.to_re "pp") (str.to_re "qq"))) (re.++ (re.* (re.* (str.to_re "rrr"))) (re.++ (re.* (re.* (str.to_re "ss"))) (re.++ (re.union (re.* (str.to_re "ttt")) (re.union (str.to_re "u") (str.to_re "vv"))) (re.++ (re.+ (re.+ (str.to_re "www"))) (re.++ (re.union (re.union (str.to_re "x") (str.to_re "yy")) (re.+ (str.to_re "zzz"))) (re.++ (re.+ (re.union (str.to_re "AAA") (str.to_re "BB"))) (re.++ (re.union (re.union (str.to_re "CC") (str.to_re "D")) (re.* (str.to_re "EEE"))) (re.++ (re.* (re.+ (str.to_re "F"))) (re.++ (re.+ (re.* (str.to_re "GG"))) (re.++ (re.union (re.+ (str.to_re "HH")) (re.+ (str.to_re "II"))) (re.++ (re.* (re.+ (str.to_re "J"))) (re.++ (re.* (re.* (str.to_re "K"))) (re.++ (re.union (re.+ (str.to_re "L")) (re.union (str.to_re "MMM") (str.to_re "NNN"))) (re.++ (re.+ (re.* (str.to_re "O"))) (re.++ (re.* (re.+ (str.to_re "PP"))) (re.++ (re.union (re.* (str.to_re "Q")) (re.union (str.to_re "RRR") (str.to_re "SS"))) (re.++ (re.union (re.union (str.to_re "TT") (str.to_re "UUU")) (re.union (str.to_re "VVV") (str.to_re "W"))) (re.++ (re.+ (re.+ (str.to_re "XX"))) (re.++ (re.union (re.* (str.to_re "Y")) (re.union (str.to_re "Z") (str.to_re "!!!"))) (re.++ (re.+ (re.union (str.to_re """""""") (str.to_re "###"))) (re.++ (re.+ (re.+ (str.to_re "$$"))) (re.++ (re.union (re.union (str.to_re "%%%") (str.to_re "&&&")) (re.+ (str.to_re "''"))) (re.++ (re.union (re.* (str.to_re "(((")) (re.+ (str.to_re ")"))) (re.++ (re.union (re.* (str.to_re "***")) (re.union (str.to_re "+") (str.to_re ","))) (re.++ (re.union (re.union (str.to_re "-") (str.to_re ".")) (re.+ (str.to_re "///"))) (re.++ (re.union (re.* (str.to_re "::")) (re.+ (str.to_re ";;"))) (re.++ (re.+ (re.* (str.to_re "<"))) (re.++ (re.+ (re.+ (str.to_re "==="))) (re.++ (re.union (re.+ (str.to_re ">")) (re.+ (str.to_re "?"))) (re.++ (re.* (re.* (str.to_re "@@"))) (re.++ (re.+ (re.+ (str.to_re "[["))) (re.++ (re.+ (re.+ (str.to_re "\\\\\\"))) (re.++ (re.* (re.+ (str.to_re "]"))) (re.++ (re.+ (re.+ (str.to_re "^"))) (re.++ (re.+ (re.* (str.to_re "_"))) (re.++ (re.+ (re.union (str.to_re "```") (str.to_re "{"))) (re.++ (re.+ (re.union (str.to_re "||") (str.to_re "}}}"))) (re.++ (re.+ (re.* (str.to_re "~"))) (re.++ (re.* (re.union (str.to_re "0") (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "22"))) (re.++ (re.union (re.union (str.to_re "333") (str.to_re "444")) (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.* (re.* (str.to_re "8"))) (re.++ (re.union (re.union (str.to_re "9") (str.to_re "a")) (re.union (str.to_re "b") (str.to_re "c"))) (re.++ (re.union (re.* (str.to_re "dd")) (re.* (str.to_re "eee"))) (re.++ (re.* (re.union (str.to_re "f") (str.to_re "gg"))) (re.++ (re.+ (re.* (str.to_re "hh"))) (re.++ (re.+ (re.* (str.to_re "ii"))) (re.++ (re.+ (re.union (str.to_re "jj") (str.to_re "k"))) (re.++ (re.* (re.+ (str.to_re "ll"))) (re.++ (re.* (re.* (str.to_re "m"))) (re.++ (re.* (re.+ (str.to_re "nnn"))) (re.++ (re.+ (re.* (str.to_re "oo"))) (re.++ (re.* (re.+ (str.to_re "p"))) (re.++ (re.union (re.union (str.to_re "qq") (str.to_re "rr")) (re.union (str.to_re "ss") (str.to_re "ttt"))) (re.++ (re.union (re.union (str.to_re "u") (str.to_re "vvv")) (re.* (str.to_re "ww"))) (re.++ (re.union (re.union (str.to_re "xx") (str.to_re "y")) (re.+ (str.to_re "zzz"))) (re.++ (re.* (re.+ (str.to_re "A"))) (re.++ (re.+ (re.+ (str.to_re "BB"))) (re.++ (re.union (re.union (str.to_re "CC") (str.to_re "D")) (re.union (str.to_re "EE") (str.to_re "FF"))) (re.++ (re.+ (re.* (str.to_re "GG"))) (re.++ (re.+ (re.* (str.to_re "HHH"))) (re.++ (re.+ (re.* (str.to_re "III"))) (re.++ (re.* (re.* (str.to_re "J"))) (re.++ (re.union (re.* (str.to_re "K")) (re.* (str.to_re "LL"))) (re.++ (re.union (re.union (str.to_re "M") (str.to_re "N")) (re.union (str.to_re "O") (str.to_re "P"))) (re.++ (re.* (re.union (str.to_re "QQQ") (str.to_re "R"))) (re.++ (re.+ (re.+ (str.to_re "SSS"))) (re.++ (re.union (re.+ (str.to_re "T")) (re.union (str.to_re "U") (str.to_re "V"))) (re.++ (re.* (re.union (str.to_re "WW") (str.to_re "XXX"))) (re.++ (re.union (re.* (str.to_re "YYY")) (re.+ (str.to_re "Z"))) (re.++ (re.+ (re.+ (str.to_re "!!"))) (re.++ (re.+ (re.* (str.to_re """"""""))) (re.++ (re.union (re.+ (str.to_re "#")) (re.+ (str.to_re "$"))) (re.++ (re.+ (re.union (str.to_re "%%%") (str.to_re "&&"))) (re.++ (re.+ (re.+ (str.to_re "'''"))) (re.++ (re.union (re.* (str.to_re "(")) (re.+ (str.to_re ")))"))) (re.++ (re.+ (re.+ (str.to_re "**"))) (re.++ (re.union (re.union (str.to_re "++") (str.to_re ",,")) (re.* (str.to_re "-"))) (re.++ (re.* (re.* (str.to_re "..."))) (re.++ (re.union (re.+ (str.to_re "///")) (re.* (str.to_re ":"))) (re.++ (re.union (re.+ (str.to_re ";;;")) (re.union (str.to_re "<") (str.to_re "==="))) (re.++ (re.* (re.+ (str.to_re ">>"))) (re.++ (re.union (re.+ (str.to_re "?")) (re.* (str.to_re "@@@"))) (re.++ (re.+ (re.+ (str.to_re "[[["))) (re.++ (re.* (re.+ (str.to_re "\\"))) (re.++ (re.* (re.* (str.to_re "]"))) (re.++ (re.union (re.+ (str.to_re "^^")) (re.* (str.to_re "___"))) (re.++ (re.+ (re.+ (str.to_re "```"))) (re.++ (re.* (re.union (str.to_re "{") (str.to_re "|"))) (re.++ (re.union (re.union (str.to_re "}}") (str.to_re "~~~")) (re.+ (str.to_re "00"))) (re.++ (re.* (re.union (str.to_re "111") (str.to_re "222"))) (re.++ (re.+ (re.+ (str.to_re "3"))) (re.++ (re.union (re.union (str.to_re "444") (str.to_re "55")) (re.union (str.to_re "66") (str.to_re "7"))) (re.++ (re.+ (re.* (str.to_re "88"))) (re.++ (re.* (re.+ (str.to_re "9"))) (re.++ (re.union (re.* (str.to_re "aaa")) (re.+ (str.to_re "b"))) (re.++ (re.* (re.* (str.to_re "cc"))) (re.++ (re.* (re.+ (str.to_re "dd"))) (re.++ (re.* (re.union (str.to_re "eee") (str.to_re "fff"))) (re.++ (re.+ (re.* (str.to_re "ggg"))) (re.++ (re.* (re.union (str.to_re "h") (str.to_re "ii"))) (re.++ (re.union (re.union (str.to_re "jjj") (str.to_re "kkk")) (re.union (str.to_re "lll") (str.to_re "mmm"))) (re.++ (re.union (re.union (str.to_re "nnn") (str.to_re "o")) (re.* (str.to_re "p"))) (re.++ (re.union (re.* (str.to_re "qqq")) (re.union (str.to_re "r") (str.to_re "sss"))) (re.++ (re.+ (re.+ (str.to_re "t"))) (re.++ (re.+ (re.* (str.to_re "u"))) (re.++ (re.* (re.+ (str.to_re "v"))) (re.++ (re.+ (re.union (str.to_re "w") (str.to_re "xx"))) (re.++ (re.* (re.union (str.to_re "y") (str.to_re "z"))) (re.++ (re.* (re.union (str.to_re "AAA") (str.to_re "BB"))) (re.++ (re.union (re.+ (str.to_re "CCC")) (re.union (str.to_re "D") (str.to_re "EE"))) (re.++ (re.* (re.+ (str.to_re "FF"))) (re.++ (re.+ (re.* (str.to_re "GGG"))) (re.++ (re.* (re.* (str.to_re "H"))) (re.++ (re.* (re.* (str.to_re "III"))) (re.++ (re.+ (re.+ (str.to_re "JJ"))) (re.++ (re.* (re.+ (str.to_re "KKK"))) (re.++ (re.+ (re.* (str.to_re "LLL"))) (re.++ (re.+ (re.+ (str.to_re "MM"))) (re.++ (re.+ (re.+ (str.to_re "N"))) (re.++ (re.union (re.union (str.to_re "OOO") (str.to_re "PP")) (re.* (str.to_re "QQ"))) (re.++ (re.union (re.union (str.to_re "RRR") (str.to_re "SS")) (re.* (str.to_re "TT"))) (re.++ (re.* (re.* (str.to_re "UU"))) (re.++ (re.+ (re.+ (str.to_re "V"))) (re.++ (re.+ (re.* (str.to_re "WWW"))) (re.++ (re.* (re.+ (str.to_re "X"))) (re.++ (re.* (re.union (str.to_re "Y") (str.to_re "Z"))) (re.++ (re.* (re.union (str.to_re "!!") (str.to_re """"""""))) (re.++ (re.* (re.union (str.to_re "#") (str.to_re "$"))) (re.++ (re.+ (re.union (str.to_re "%") (str.to_re "&&"))) (re.++ (re.union (re.* (str.to_re "'")) (re.+ (str.to_re "("))) (re.++ (re.+ (re.union (str.to_re ")))") (str.to_re "**"))) (re.++ (re.+ (re.* (str.to_re "+++"))) (re.++ (re.+ (re.* (str.to_re ",,"))) (re.++ (re.* (re.+ (str.to_re "--"))) (re.++ (re.* (re.+ (str.to_re "..."))) (re.++ (re.+ (re.union (str.to_re "/") (str.to_re ":::"))) (re.++ (re.union (re.union (str.to_re ";;") (str.to_re "<<<")) (re.union (str.to_re "==") (str.to_re ">>"))) (re.+ (re.union (str.to_re "??") (str.to_re "@")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
