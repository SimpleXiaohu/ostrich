(declare-const x String)
(declare-const y String)
(assert (= x "a}ju60%<pj1'\x0c'c*' 'Ar'\r'ek='N{br6ntutgzyE;60n'\\uf!\\Nvan""l;hOq=sx'\t'YKZ1d6_KM#]7zs'\t't:>7wZ3)nhbj''\r',7BBpEY`]D@uY""3q9BI-w$S<~Jl'\x0c'zji~qeyOXz'\x0b'cR' '9E[Xz'\t'>('\x0b';C?9f5j'' '$%!i'OB(OgL(m)?^Y,G``7!kJ+-&`7Q'\x0b'/5'*JJ,&\\9yDH#,$-#EY\\JBQSX'\r'yKQ#OO'\x0c''.'db_gI{0A_YL'\t'E5Ki1&eH&]UyqfwK#1np).I#W5[0}0'\t'e1*aE$y1|@$yso\\P' 'sqs'\n')d[a]PR]?vpft`ay""n>Ly`ms1c'\t'+DL[gZ'\x0b'}Ne?SDTi0+TmG|'\n'@*uIG^w3G=IUs`:f{fK'\t'c""vOH/?~'\r'<fI$3XqmXLb9]R:~gB{)gSn?y16fhA{z'\n'<k~RG'\n''t,^7E+'\t'XcQ6AD*dT'\n')`""y:N9!iPzLg}z}ZI&[xC@&ApG8053x)_dMTU4RFPGdA07Qr#^(5\\AZtr'\x0b':M'\x0b'8h~\\C/#G1t{Khe+' '}&q0e^K^&@HjMZVA0Y&' '!tRryF-X'\x0c'HwH9}-=~r'\t'`d9fyUVVy!2?m=XLX1`uOM=M3Ag.~DFLr+7,RXII\\'.' 'D3r%(h'\n'{'\r'dq_O""cu+*/&Q4' '2L&c&,m0aH+Gnu-Gy*kiD?S^'\x0c''\r'Y1*$s!n0d2X]T=jljIc6>-+' 'wf>g'\n'l'?~='\n'-'\t'!qI}^x<Lg}^B'\r',/qR_0ubV$'\x0b'l&Wt$'\x0c'\\H'?(x;dL]|1_:*$Wbx0C\\-NYD2V~m=j_Y)W"))
(assert (str.in.re x (re.+ (re.* (str.to.re "cd@")))))
(check-sat)
(get-model)