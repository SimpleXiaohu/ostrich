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
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.+ (re.union (str.to_re "222") (str.to_re "33"))) (re.++ (re.+ (re.* (str.to_re "44"))) (re.++ (re.union (re.+ (str.to_re "5")) (re.+ (str.to_re "66"))) (re.++ (re.* (re.+ (str.to_re "777"))) (re.++ (re.* (re.* (str.to_re "8"))) (re.++ (re.+ (re.+ (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.++ (re.* (re.* (str.to_re "b"))) (re.++ (re.* (re.union (str.to_re "c") (str.to_re "d"))) (re.++ (re.union (re.+ (str.to_re "ee")) (re.union (str.to_re "f") (str.to_re "g"))) (re.++ (re.+ (re.* (str.to_re "hh"))) (re.++ (re.* (re.* (str.to_re "iii"))) (re.++ (re.* (re.* (str.to_re "j"))) (re.++ (re.union (re.* (str.to_re "k")) (re.union (str.to_re "lll") (str.to_re "mm"))) (re.++ (re.+ (re.union (str.to_re "nnn") (str.to_re "o"))) (re.++ (re.* (re.union (str.to_re "ppp") (str.to_re "q"))) (re.++ (re.* (re.union (str.to_re "r") (str.to_re "ss"))) (re.++ (re.union (re.+ (str.to_re "t")) (re.+ (str.to_re "uuu"))) (re.++ (re.+ (re.union (str.to_re "vv") (str.to_re "www"))) (re.++ (re.union (re.union (str.to_re "x") (str.to_re "y")) (re.+ (str.to_re "zzz"))) (re.++ (re.+ (re.* (str.to_re "AA"))) (re.++ (re.+ (re.union (str.to_re "B") (str.to_re "CC"))) (re.++ (re.* (re.+ (str.to_re "D"))) (re.++ (re.union (re.union (str.to_re "EE") (str.to_re "FF")) (re.* (str.to_re "G"))) (re.++ (re.* (re.+ (str.to_re "H"))) (re.++ (re.+ (re.+ (str.to_re "III"))) (re.++ (re.union (re.+ (str.to_re "J")) (re.* (str.to_re "KKK"))) (re.++ (re.+ (re.+ (str.to_re "LL"))) (re.++ (re.+ (re.+ (str.to_re "MM"))) (re.++ (re.* (re.union (str.to_re "NN") (str.to_re "O"))) (re.++ (re.union (re.+ (str.to_re "P")) (re.+ (str.to_re "Q"))) (re.++ (re.union (re.* (str.to_re "RR")) (re.* (str.to_re "SS"))) (re.++ (re.+ (re.+ (str.to_re "TT"))) (re.++ (re.* (re.+ (str.to_re "U"))) (re.++ (re.* (re.+ (str.to_re "VV"))) (re.++ (re.+ (re.* (str.to_re "W"))) (re.++ (re.+ (re.* (str.to_re "XXX"))) (re.++ (re.union (re.+ (str.to_re "YYY")) (re.* (str.to_re "ZZ"))) (re.++ (re.union (re.+ (str.to_re "!!")) (re.union (str.to_re """") (str.to_re "#"))) (re.++ (re.+ (re.* (str.to_re "$$$"))) (re.++ (re.* (re.union (str.to_re "%") (str.to_re "&"))) (re.++ (re.union (re.+ (str.to_re "'''")) (re.* (str.to_re "("))) (re.++ (re.+ (re.+ (str.to_re ")))"))) (re.++ (re.union (re.* (str.to_re "**")) (re.union (str.to_re "+") (str.to_re ","))) (re.++ (re.union (re.* (str.to_re "-")) (re.* (str.to_re "..."))) (re.++ (re.+ (re.* (str.to_re "//"))) (re.++ (re.union (re.* (str.to_re ":::")) (re.+ (str.to_re ";;;"))) (re.++ (re.union (re.* (str.to_re "<<<")) (re.+ (str.to_re "=="))) (re.++ (re.* (re.* (str.to_re ">"))) (re.++ (re.union (re.union (str.to_re "???") (str.to_re "@")) (re.union (str.to_re "[") (str.to_re "\\"))) (re.++ (re.union (re.* (str.to_re "]]")) (re.union (str.to_re "^") (str.to_re "__"))) (re.++ (re.union (re.+ (str.to_re "``")) (re.+ (str.to_re "{{"))) (re.++ (re.union (re.* (str.to_re "||")) (re.union (str.to_re "}") (str.to_re "~~~"))) (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.union (re.+ (str.to_re "11")) (re.union (str.to_re "222") (str.to_re "33"))) (re.++ (re.+ (re.union (str.to_re "44") (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "6") (str.to_re "7")) (re.* (str.to_re "8"))) (re.++ (re.* (re.* (str.to_re "999"))) (re.++ (re.union (re.+ (str.to_re "a")) (re.+ (str.to_re "b"))) (re.++ (re.union (re.+ (str.to_re "cc")) (re.* (str.to_re "dd"))) (re.++ (re.* (re.* (str.to_re "eee"))) (re.++ (re.union (re.+ (str.to_re "fff")) (re.+ (str.to_re "ggg"))) (re.++ (re.* (re.union (str.to_re "h") (str.to_re "iii"))) (re.++ (re.* (re.* (str.to_re "jj"))) (re.++ (re.+ (re.* (str.to_re "kk"))) (re.++ (re.union (re.+ (str.to_re "ll")) (re.+ (str.to_re "mm"))) (re.++ (re.* (re.* (str.to_re "nnn"))) (re.++ (re.* (re.* (str.to_re "oo"))) (re.++ (re.union (re.+ (str.to_re "pp")) (re.* (str.to_re "q"))) (re.++ (re.+ (re.union (str.to_re "r") (str.to_re "sss"))) (re.++ (re.union (re.* (str.to_re "t")) (re.+ (str.to_re "u"))) (re.++ (re.* (re.union (str.to_re "vv") (str.to_re "w"))) (re.++ (re.* (re.union (str.to_re "xxx") (str.to_re "yy"))) (re.++ (re.+ (re.union (str.to_re "zz") (str.to_re "A"))) (re.++ (re.+ (re.* (str.to_re "BB"))) (re.++ (re.* (re.* (str.to_re "C"))) (re.++ (re.union (re.* (str.to_re "D")) (re.* (str.to_re "EEE"))) (re.++ (re.+ (re.* (str.to_re "F"))) (re.++ (re.* (re.* (str.to_re "G"))) (re.++ (re.+ (re.+ (str.to_re "HHH"))) (re.++ (re.* (re.+ (str.to_re "II"))) (re.++ (re.+ (re.* (str.to_re "JJ"))) (re.++ (re.* (re.union (str.to_re "K") (str.to_re "LL"))) (re.++ (re.* (re.* (str.to_re "MMM"))) (re.union (re.union (str.to_re "NN") (str.to_re "OO")) (re.* (str.to_re "PPP"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.+ (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.+ (re.union (str.to_re "4") (str.to_re "55"))) (re.++ (re.* (re.union (str.to_re "66") (str.to_re "77"))) (re.++ (re.* (re.+ (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "999") (str.to_re "aaa"))) (re.++ (re.+ (re.union (str.to_re "b") (str.to_re "c"))) (re.++ (re.+ (re.union (str.to_re "dd") (str.to_re "e"))) (re.++ (re.* (re.* (str.to_re "ff"))) (re.++ (re.union (re.+ (str.to_re "gg")) (re.* (str.to_re "h"))) (re.++ (re.union (re.* (str.to_re "i")) (re.* (str.to_re "jj"))) (re.++ (re.+ (re.+ (str.to_re "kkk"))) (re.++ (re.* (re.union (str.to_re "l") (str.to_re "mmm"))) (re.++ (re.* (re.+ (str.to_re "nn"))) (re.++ (re.union (re.+ (str.to_re "ooo")) (re.* (str.to_re "pp"))) (re.++ (re.* (re.+ (str.to_re "qq"))) (re.++ (re.+ (re.+ (str.to_re "r"))) (re.++ (re.+ (re.union (str.to_re "s") (str.to_re "t"))) (re.++ (re.+ (re.* (str.to_re "uuu"))) (re.++ (re.+ (re.union (str.to_re "vvv") (str.to_re "ww"))) (re.++ (re.* (re.union (str.to_re "xxx") (str.to_re "yyy"))) (re.++ (re.union (re.+ (str.to_re "zz")) (re.union (str.to_re "AA") (str.to_re "BB"))) (re.++ (re.+ (re.union (str.to_re "C") (str.to_re "DDD"))) (re.++ (re.union (re.* (str.to_re "EE")) (re.* (str.to_re "FFF"))) (re.++ (re.* (re.union (str.to_re "GGG") (str.to_re "HHH"))) (re.++ (re.+ (re.union (str.to_re "III") (str.to_re "J"))) (re.++ (re.* (re.+ (str.to_re "K"))) (re.++ (re.+ (re.union (str.to_re "L") (str.to_re "MM"))) (re.++ (re.* (re.* (str.to_re "NN"))) (re.++ (re.+ (re.union (str.to_re "OO") (str.to_re "PP"))) (re.++ (re.+ (re.union (str.to_re "Q") (str.to_re "R"))) (re.++ (re.+ (re.union (str.to_re "SS") (str.to_re "TTT"))) (re.++ (re.+ (re.* (str.to_re "U"))) (re.++ (re.* (re.+ (str.to_re "VVV"))) (re.++ (re.* (re.+ (str.to_re "W"))) (re.++ (re.union (re.union (str.to_re "XX") (str.to_re "Y")) (re.union (str.to_re "ZZ") (str.to_re "!!!"))) (re.++ (re.* (re.+ (str.to_re """"""""))) (re.++ (re.union (re.union (str.to_re "#") (str.to_re "$$$")) (re.+ (str.to_re "%%"))) (re.++ (re.+ (re.union (str.to_re "&&&") (str.to_re "'"))) (re.++ (re.union (re.union (str.to_re "((") (str.to_re "))")) (re.+ (str.to_re "**"))) (re.++ (re.+ (re.union (str.to_re "+++") (str.to_re ",,,"))) (re.++ (re.union (re.+ (str.to_re "---")) (re.union (str.to_re "...") (str.to_re "/"))) (re.++ (re.+ (re.+ (str.to_re ":"))) (re.++ (re.* (re.+ (str.to_re ";;"))) (re.++ (re.* (re.* (str.to_re "<<<"))) (re.++ (re.+ (re.+ (str.to_re "="))) (re.++ (re.* (re.union (str.to_re ">") (str.to_re "??"))) (re.++ (re.union (re.+ (str.to_re "@")) (re.union (str.to_re "[") (str.to_re "\\"))) (re.++ (re.+ (re.union (str.to_re "]]]") (str.to_re "^^^"))) (re.++ (re.+ (re.* (str.to_re "_"))) (re.++ (re.+ (re.+ (str.to_re "``"))) (re.++ (re.* (re.* (str.to_re "{{"))) (re.++ (re.+ (re.* (str.to_re "||"))) (re.++ (re.* (re.+ (str.to_re "}}}"))) (re.++ (re.* (re.* (str.to_re "~"))) (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.* (str.to_re "1")) (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "555"))) (re.++ (re.+ (re.union (str.to_re "66") (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "888")) (re.+ (str.to_re "99"))) (re.++ (re.union (re.union (str.to_re "aaa") (str.to_re "bb")) (re.* (str.to_re "ccc"))) (re.++ (re.+ (re.* (str.to_re "dd"))) (re.++ (re.* (re.* (str.to_re "eee"))) (re.++ (re.+ (re.+ (str.to_re "f"))) (re.++ (re.+ (re.+ (str.to_re "ggg"))) (re.++ (re.* (re.* (str.to_re "hh"))) (re.++ (re.union (re.* (str.to_re "i")) (re.+ (str.to_re "jjj"))) (re.++ (re.* (re.+ (str.to_re "k"))) (re.++ (re.union (re.+ (str.to_re "ll")) (re.* (str.to_re "mmm"))) (re.++ (re.* (re.* (str.to_re "n"))) (re.++ (re.* (re.+ (str.to_re "oo"))) (re.++ (re.+ (re.+ (str.to_re "pp"))) (re.++ (re.+ (re.+ (str.to_re "q"))) (re.++ (re.+ (re.* (str.to_re "rrr"))) (re.++ (re.union (re.* (str.to_re "ss")) (re.union (str.to_re "tt") (str.to_re "uu"))) (re.++ (re.+ (re.union (str.to_re "vvv") (str.to_re "ww"))) (re.++ (re.union (re.union (str.to_re "xxx") (str.to_re "yyy")) (re.union (str.to_re "z") (str.to_re "AA"))) (re.++ (re.* (re.+ (str.to_re "BBB"))) (re.++ (re.+ (re.+ (str.to_re "CCC"))) (re.++ (re.+ (re.+ (str.to_re "D"))) (re.++ (re.* (re.union (str.to_re "E") (str.to_re "F"))) (re.++ (re.union (re.+ (str.to_re "GGG")) (re.union (str.to_re "HH") (str.to_re "III"))) (re.++ (re.+ (re.* (str.to_re "JJ"))) (re.++ (re.union (re.union (str.to_re "KK") (str.to_re "LLL")) (re.+ (str.to_re "MMM"))) (re.* (re.+ (str.to_re "N")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
