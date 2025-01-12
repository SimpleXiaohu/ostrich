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
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.union (re.union (str.to_re "11") (str.to_re "222")) (re.* (str.to_re "33"))) (re.++ (re.+ (re.+ (str.to_re "444"))) (re.++ (re.+ (re.+ (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.union (str.to_re "777") (str.to_re "8"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "aa"))) (re.++ (re.+ (re.union (str.to_re "b") (str.to_re "cc"))) (re.++ (re.* (re.* (str.to_re "dd"))) (re.++ (re.* (re.+ (str.to_re "e"))) (re.++ (re.* (re.* (str.to_re "fff"))) (re.++ (re.+ (re.* (str.to_re "ggg"))) (re.++ (re.* (re.+ (str.to_re "hh"))) (re.++ (re.+ (re.* (str.to_re "i"))) (re.++ (re.union (re.union (str.to_re "jj") (str.to_re "kk")) (re.* (str.to_re "lll"))) (re.++ (re.* (re.union (str.to_re "mmm") (str.to_re "nnn"))) (re.++ (re.+ (re.union (str.to_re "ooo") (str.to_re "pp"))) (re.++ (re.* (re.+ (str.to_re "qqq"))) (re.++ (re.union (re.union (str.to_re "rr") (str.to_re "s")) (re.+ (str.to_re "t"))) (re.++ (re.union (re.* (str.to_re "u")) (re.union (str.to_re "v") (str.to_re "ww"))) (re.++ (re.union (re.* (str.to_re "xx")) (re.union (str.to_re "y") (str.to_re "zzz"))) (re.++ (re.+ (re.union (str.to_re "A") (str.to_re "BBB"))) (re.++ (re.* (re.union (str.to_re "CCC") (str.to_re "DD"))) (re.++ (re.+ (re.union (str.to_re "E") (str.to_re "F"))) (re.++ (re.union (re.union (str.to_re "GG") (str.to_re "HHH")) (re.+ (str.to_re "II"))) (re.++ (re.* (re.* (str.to_re "J"))) (re.++ (re.* (re.* (str.to_re "KK"))) (re.++ (re.+ (re.+ (str.to_re "LLL"))) (re.++ (re.* (re.* (str.to_re "M"))) (re.++ (re.* (re.+ (str.to_re "NNN"))) (re.++ (re.union (re.union (str.to_re "OO") (str.to_re "P")) (re.+ (str.to_re "Q"))) (re.++ (re.+ (re.union (str.to_re "R") (str.to_re "SSS"))) (re.++ (re.* (re.* (str.to_re "TTT"))) (re.++ (re.* (re.union (str.to_re "UUU") (str.to_re "VVV"))) (re.++ (re.+ (re.+ (str.to_re "W"))) (re.++ (re.union (re.* (str.to_re "XX")) (re.* (str.to_re "Y"))) (re.++ (re.union (re.* (str.to_re "ZZZ")) (re.+ (str.to_re "!!!"))) (re.++ (re.+ (re.union (str.to_re """""") (str.to_re "#"))) (re.++ (re.union (re.union (str.to_re "$$$") (str.to_re "%")) (re.union (str.to_re "&") (str.to_re "''"))) (re.++ (re.+ (re.+ (str.to_re "((("))) (re.++ (re.* (re.+ (str.to_re "))"))) (re.++ (re.union (re.+ (str.to_re "***")) (re.union (str.to_re "+") (str.to_re ",,"))) (re.++ (re.+ (re.* (str.to_re "--"))) (re.++ (re.+ (re.+ (str.to_re "."))) (re.++ (re.* (re.* (str.to_re "///"))) (re.++ (re.+ (re.+ (str.to_re ":"))) (re.++ (re.* (re.union (str.to_re ";;") (str.to_re "<<"))) (re.++ (re.+ (re.+ (str.to_re "==="))) (re.++ (re.* (re.union (str.to_re ">") (str.to_re "?"))) (re.++ (re.union (re.union (str.to_re "@@@") (str.to_re "[[[")) (re.union (str.to_re "\\\\") (str.to_re "]"))) (re.++ (re.* (re.* (str.to_re "^^^"))) (re.++ (re.union (re.* (str.to_re "_")) (re.+ (str.to_re "`"))) (re.++ (re.* (re.+ (str.to_re "{"))) (re.++ (re.* (re.* (str.to_re "|"))) (re.++ (re.+ (re.+ (str.to_re "}}"))) (re.++ (re.+ (re.* (str.to_re "~"))) (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.+ (re.union (str.to_re "11") (str.to_re "22"))) (re.++ (re.+ (re.* (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "55")) (re.+ (str.to_re "666"))) (re.++ (re.+ (re.union (str.to_re "7") (str.to_re "888"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.++ (re.* (re.union (str.to_re "aaa") (str.to_re "bbb"))) (re.++ (re.* (re.* (str.to_re "ccc"))) (re.++ (re.union (re.* (str.to_re "d")) (re.+ (str.to_re "e"))) (re.union (re.* (str.to_re "f")) (re.* (str.to_re "gg"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert (not (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "11")) (re.union (str.to_re "2") (str.to_re "33"))) (re.++ (re.union (re.+ (str.to_re "44")) (re.+ (str.to_re "5"))) (re.++ (re.* (re.+ (str.to_re "666"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.+ (re.+ (str.to_re "888"))) (re.++ (re.* (re.* (str.to_re "9"))) (re.++ (re.union (re.* (str.to_re "a")) (re.* (str.to_re "b"))) (re.++ (re.union (re.* (str.to_re "ccc")) (re.union (str.to_re "dd") (str.to_re "e"))) (re.++ (re.* (re.* (str.to_re "f"))) (re.++ (re.+ (re.* (str.to_re "ggg"))) (re.++ (re.* (re.+ (str.to_re "hh"))) (re.++ (re.+ (re.+ (str.to_re "i"))) (re.++ (re.union (re.+ (str.to_re "jjj")) (re.* (str.to_re "kkk"))) (re.++ (re.* (re.* (str.to_re "lll"))) (re.++ (re.+ (re.+ (str.to_re "m"))) (re.++ (re.* (re.union (str.to_re "nn") (str.to_re "oo"))) (re.++ (re.* (re.+ (str.to_re "pp"))) (re.++ (re.+ (re.* (str.to_re "qqq"))) (re.++ (re.+ (re.union (str.to_re "rrr") (str.to_re "s"))) (re.++ (re.union (re.* (str.to_re "t")) (re.union (str.to_re "uuu") (str.to_re "vv"))) (re.++ (re.union (re.union (str.to_re "w") (str.to_re "x")) (re.+ (str.to_re "y"))) (re.++ (re.union (re.union (str.to_re "zzz") (str.to_re "A")) (re.* (str.to_re "BBB"))) (re.++ (re.* (re.* (str.to_re "C"))) (re.++ (re.union (re.* (str.to_re "DD")) (re.* (str.to_re "EE"))) (re.++ (re.union (re.+ (str.to_re "FF")) (re.* (str.to_re "G"))) (re.++ (re.* (re.union (str.to_re "HHH") (str.to_re "I"))) (re.++ (re.+ (re.+ (str.to_re "JJ"))) (re.++ (re.union (re.union (str.to_re "KKK") (str.to_re "LL")) (re.+ (str.to_re "M"))) (re.++ (re.* (re.* (str.to_re "NN"))) (re.++ (re.* (re.union (str.to_re "OOO") (str.to_re "PP"))) (re.++ (re.* (re.+ (str.to_re "Q"))) (re.++ (re.* (re.union (str.to_re "RR") (str.to_re "SS"))) (re.++ (re.union (re.union (str.to_re "TT") (str.to_re "UUU")) (re.* (str.to_re "VV"))) (re.++ (re.union (re.union (str.to_re "W") (str.to_re "XXX")) (re.+ (str.to_re "YYY"))) (re.++ (re.* (re.+ (str.to_re "ZZ"))) (re.++ (re.union (re.+ (str.to_re "!!")) (re.+ (str.to_re """"""))) (re.++ (re.union (re.+ (str.to_re "###")) (re.union (str.to_re "$$$") (str.to_re "%%"))) (re.++ (re.union (re.* (str.to_re "&")) (re.union (str.to_re "'") (str.to_re "("))) (re.++ (re.union (re.* (str.to_re ")")) (re.+ (str.to_re "**"))) (re.++ (re.union (re.+ (str.to_re "++")) (re.union (str.to_re ",") (str.to_re "---"))) (re.++ (re.union (re.union (str.to_re ".") (str.to_re "//")) (re.+ (str.to_re ":"))) (re.++ (re.+ (re.+ (str.to_re ";;;"))) (re.++ (re.union (re.+ (str.to_re "<<")) (re.union (str.to_re "===") (str.to_re ">>>"))) (re.++ (re.+ (re.+ (str.to_re "???"))) (re.++ (re.+ (re.+ (str.to_re "@"))) (re.++ (re.* (re.* (str.to_re "[[["))) (re.++ (re.* (re.+ (str.to_re "\\\\"))) (re.++ (re.* (re.* (str.to_re "]"))) (re.++ (re.union (re.union (str.to_re "^^") (str.to_re "___")) (re.* (str.to_re "```"))) (re.++ (re.union (re.* (str.to_re "{{{")) (re.* (str.to_re "|"))) (re.++ (re.+ (re.+ (str.to_re "}"))) (re.++ (re.union (re.union (str.to_re "~~") (str.to_re "00")) (re.+ (str.to_re "111"))) (re.++ (re.+ (re.union (str.to_re "22") (str.to_re "3"))) (re.++ (re.* (re.* (str.to_re "4"))) (re.++ (re.* (re.union (str.to_re "5") (str.to_re "666"))) (re.++ (re.* (re.* (str.to_re "77"))) (re.++ (re.+ (re.* (str.to_re "888"))) (re.++ (re.union (re.union (str.to_re "999") (str.to_re "aa")) (re.* (str.to_re "bbb"))) (re.++ (re.union (re.* (str.to_re "ccc")) (re.* (str.to_re "dd"))) (re.++ (re.+ (re.union (str.to_re "e") (str.to_re "ff"))) (re.++ (re.union (re.union (str.to_re "gg") (str.to_re "h")) (re.* (str.to_re "ii"))) (re.++ (re.+ (re.union (str.to_re "jjj") (str.to_re "kk"))) (re.++ (re.+ (re.+ (str.to_re "l"))) (re.++ (re.* (re.* (str.to_re "mmm"))) (re.union (re.+ (str.to_re "n")) (re.* (str.to_re "oo")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
(exit)
