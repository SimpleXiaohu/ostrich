(declare-const x String)
(assert (= x "kQcgTB;0' '$.,'y'\x0c'Wt&!-Pc'\x0b'mPh;~OD>}9^vtSN4V4-)hC:'A%drtkz'\r'jgW-=r[kU'\n'%IE]FJ~UH8Uy_E$S:''\r'''"))
(assert (str.in.re x (re.* (re.++ (str.to.re "'Ln{:K4+vhd'|;'\x0b'Y:8DRz0inM3V;\\<") (str.to.re ";Nd")))))
(check-sat)
(get-model)