(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Denghang Hu
Generated on: 2023-04-14
Application: Evaluate string solvers
Target solver: Ostrich, Z3str3, CVC5
Description: The instance consists of:
(1) a regular membership predicate from the real world
(2) a regular membership predicate to sanitize danger letters in javascript such as <,>,&,",'
(3) a lower bound for string length
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)
        ;test regex ^"\s{3}(\d+)(?:[\s:]|\d\.\d\d%)*(\d+\/\w{3}\/14)[\s\d:]*(\/site\/podcasts\/audio\/.*\.mp3)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 3 3) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.* (re.union (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re ":")) (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (str.to_re "%"))))))) (re.++ (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "/") (str.to_re "14"))))) (re.++ (re.* (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.range "0" "9") (str.to_re ":")))) (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (str.to_re "a") (re.++ (str.to_re "u") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re "3")))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(exit)
