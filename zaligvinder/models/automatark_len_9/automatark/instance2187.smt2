(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (str.in_re X (str.to_re "DesktopBladeclient=wwwHello.xmlns:\u{0a}")))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (str.in_re X (re.++ (str.to_re ".\u{0a}") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to_re "?"))))
(assert (> (str.len X) 9))
(check-sat)
