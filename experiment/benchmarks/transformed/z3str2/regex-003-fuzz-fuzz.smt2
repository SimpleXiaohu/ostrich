(declare-const x String)
(assert (= x "eabpFMV,n'\x0c''\x0b'u;=Kq?`>F{W{*sW|Q""/.I_LKv'\x0c'raS}M]Xx.BJ'\n'^T|2aj}D_l5>:w?nv0>;^T=H%>\\4p/61h<YVqY&<LV;17.Giq'V*G>k[zb7xl^K_K[cN:)Df2zStZ_I:,m03"))
(assert (str.in.re x (re.+ (re.++ (str.to.re "GDHx''\x0b'KjD>,E&d") (str.to.re "cU3oblD")))))
(check-sat)
(get-model)