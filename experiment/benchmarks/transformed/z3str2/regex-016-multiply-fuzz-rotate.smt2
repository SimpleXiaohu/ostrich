(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "aabbO^$.9''dd") (str.to.re "112m%RWs;4'")))))
(assert (= 9 (str.to.int x)))
(assert (not (= x "a\\],^lP8""5)#Zw5#p#x8{\\qP'''\n''03N|n]0''\r''0sB,!!K-#o^)S@?%''\r''""''\x0b''d1'' ''''\r''''\x0c''4OF@tFkN+e332EaboJ3QY6p]od")))
(assert (not (= x "Z~ddv(>.bcFhDUKff\\>''\x0c''P--rS.`18w'' ''g;''\x0c''p9B>tGa|;X?1J#}QKpEMZjjWO]8Ok2")))
(check-sat)
(get-model)