(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "''xxhhrr''' '' '''JJrr''ll''hhmmJJ!!PPrrPPHHDD22$$$$") re.allchar)))
(assert (not (str.in.re S (re.union (re.union (re.union (str.to.re "77llmmnn'''\r''\r''']]''<<ff||UUii'''\t''\t'''||@@++II,,") re.allchar) (str.to.re "JJ44>>$$dd66rr")) re.allchar))))
(check-sat)
(get-model)