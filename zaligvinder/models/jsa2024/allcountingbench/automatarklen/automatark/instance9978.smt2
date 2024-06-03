(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[A-Z]{2}[0-9]{6}[A-DFM]{1}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "D") (str.to_re "F") (str.to_re "M"))) (str.to_re "\u{0a}"))))
; (LOC[^']*')(GID[^']*')?(GDS[^']*')?(FTX[^']*'){0,9}(MEA[^']*'){1,9}(DIM[^']*'){0,9}(TMP[^']*')?(RNG[^']*')?(LOC[^']*'){0,9}(RFF[^']*')((EQD[^']*')(EQA[^']*'){0,9}(NAD[^']*')?){0,3}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "GID") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "GDS") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "FTX") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 1 9) (re.++ (str.to_re "MEA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "DIM") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "TMP") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "RNG") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 9) (re.++ (str.to_re "LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) ((_ re.loop 0 3) (re.++ ((_ re.loop 0 9) (re.++ (str.to_re "EQA") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (re.opt (re.++ (str.to_re "NAD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "EQD") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))) (str.to_re "\u{0a}LOC") (re.* (re.comp (str.to_re "'"))) (str.to_re "'RFF") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")))))
(assert (> (str.len X) 10))
(check-sat)
