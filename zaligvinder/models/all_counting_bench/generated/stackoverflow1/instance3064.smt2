;test regex ^((R|AED|AFN|ALL|AMD|ANG|AOA|ARS|AUD|AWG|AZN|BAM|BBD|BDT|BGN|BHD|BIF|BMD|BND|BOB|BRL|BSD|BTN|BWP|BYR|BZD|CAD|CDF|CHF|CLP|CNY|COP|CRC|CUC|CUP|CVE|CZK|DJF|DKK|DOP|DZD|EGP|ERN|ETB|EUR|FJD|FKP|GBP|GEL|GHS|GIP|GMD|GNF|GTQ|GYD|HKD|HNL|HRK|HTG|HUF|IDR|ILS|INR|IQD|IRR|ISK|JMD|JOD|JPY|KES|KGS|KHR|KMF|KPW|KRW|KWD|KYD|KZT|LAK|LBP|LKR|LRD|LSL|LYD|MAD|MDL|MGA|MKD|MMK|MNT|MOP|MRO|MUR|MVR|MWK|MXN|MYR|MZN|NAD|NGN|NIO|NOK|NPR|NZD|OMR|PAB|PEN|PGK|PHP|PKR|PLN|PYG|QAR|RON|RSD|RUB|RWF|SAR|SBD|SCR|SDG|SEK|SGD|SHP|SLL|SOS|SRD|SSP|STD|SYP|SZL|THB|TJS|TMT|TND|TOP|TRY|TTD|TWD|TZS|UAH|UGX|USD|UYU|UZS|VEF|VND|VUV|WST|XAF|XCD|XOF|XPF|YER|ZAR|ZMW) ?([1-9][0-9]{0,2}((,| )?[0-9]{3}){2,}|0)\.[0-9][0-9])?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.opt (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "R") (re.++ (str.to_re "A") (re.++ (str.to_re "E") (str.to_re "D")))) (re.++ (str.to_re "A") (re.++ (str.to_re "F") (str.to_re "N")))) (re.++ (str.to_re "A") (re.++ (str.to_re "L") (str.to_re "L")))) (re.++ (str.to_re "A") (re.++ (str.to_re "M") (str.to_re "D")))) (re.++ (str.to_re "A") (re.++ (str.to_re "N") (str.to_re "G")))) (re.++ (str.to_re "A") (re.++ (str.to_re "O") (str.to_re "A")))) (re.++ (str.to_re "A") (re.++ (str.to_re "R") (str.to_re "S")))) (re.++ (str.to_re "A") (re.++ (str.to_re "U") (str.to_re "D")))) (re.++ (str.to_re "A") (re.++ (str.to_re "W") (str.to_re "G")))) (re.++ (str.to_re "A") (re.++ (str.to_re "Z") (str.to_re "N")))) (re.++ (str.to_re "B") (re.++ (str.to_re "A") (str.to_re "M")))) (re.++ (str.to_re "B") (re.++ (str.to_re "B") (str.to_re "D")))) (re.++ (str.to_re "B") (re.++ (str.to_re "D") (str.to_re "T")))) (re.++ (str.to_re "B") (re.++ (str.to_re "G") (str.to_re "N")))) (re.++ (str.to_re "B") (re.++ (str.to_re "H") (str.to_re "D")))) (re.++ (str.to_re "B") (re.++ (str.to_re "I") (str.to_re "F")))) (re.++ (str.to_re "B") (re.++ (str.to_re "M") (str.to_re "D")))) (re.++ (str.to_re "B") (re.++ (str.to_re "N") (str.to_re "D")))) (re.++ (str.to_re "B") (re.++ (str.to_re "O") (str.to_re "B")))) (re.++ (str.to_re "B") (re.++ (str.to_re "R") (str.to_re "L")))) (re.++ (str.to_re "B") (re.++ (str.to_re "S") (str.to_re "D")))) (re.++ (str.to_re "B") (re.++ (str.to_re "T") (str.to_re "N")))) (re.++ (str.to_re "B") (re.++ (str.to_re "W") (str.to_re "P")))) (re.++ (str.to_re "B") (re.++ (str.to_re "Y") (str.to_re "R")))) (re.++ (str.to_re "B") (re.++ (str.to_re "Z") (str.to_re "D")))) (re.++ (str.to_re "C") (re.++ (str.to_re "A") (str.to_re "D")))) (re.++ (str.to_re "C") (re.++ (str.to_re "D") (str.to_re "F")))) (re.++ (str.to_re "C") (re.++ (str.to_re "H") (str.to_re "F")))) (re.++ (str.to_re "C") (re.++ (str.to_re "L") (str.to_re "P")))) (re.++ (str.to_re "C") (re.++ (str.to_re "N") (str.to_re "Y")))) (re.++ (str.to_re "C") (re.++ (str.to_re "O") (str.to_re "P")))) (re.++ (str.to_re "C") (re.++ (str.to_re "R") (str.to_re "C")))) (re.++ (str.to_re "C") (re.++ (str.to_re "U") (str.to_re "C")))) (re.++ (str.to_re "C") (re.++ (str.to_re "U") (str.to_re "P")))) (re.++ (str.to_re "C") (re.++ (str.to_re "V") (str.to_re "E")))) (re.++ (str.to_re "C") (re.++ (str.to_re "Z") (str.to_re "K")))) (re.++ (str.to_re "D") (re.++ (str.to_re "J") (str.to_re "F")))) (re.++ (str.to_re "D") (re.++ (str.to_re "K") (str.to_re "K")))) (re.++ (str.to_re "D") (re.++ (str.to_re "O") (str.to_re "P")))) (re.++ (str.to_re "D") (re.++ (str.to_re "Z") (str.to_re "D")))) (re.++ (str.to_re "E") (re.++ (str.to_re "G") (str.to_re "P")))) (re.++ (str.to_re "E") (re.++ (str.to_re "R") (str.to_re "N")))) (re.++ (str.to_re "E") (re.++ (str.to_re "T") (str.to_re "B")))) (re.++ (str.to_re "E") (re.++ (str.to_re "U") (str.to_re "R")))) (re.++ (str.to_re "F") (re.++ (str.to_re "J") (str.to_re "D")))) (re.++ (str.to_re "F") (re.++ (str.to_re "K") (str.to_re "P")))) (re.++ (str.to_re "G") (re.++ (str.to_re "B") (str.to_re "P")))) (re.++ (str.to_re "G") (re.++ (str.to_re "E") (str.to_re "L")))) (re.++ (str.to_re "G") (re.++ (str.to_re "H") (str.to_re "S")))) (re.++ (str.to_re "G") (re.++ (str.to_re "I") (str.to_re "P")))) (re.++ (str.to_re "G") (re.++ (str.to_re "M") (str.to_re "D")))) (re.++ (str.to_re "G") (re.++ (str.to_re "N") (str.to_re "F")))) (re.++ (str.to_re "G") (re.++ (str.to_re "T") (str.to_re "Q")))) (re.++ (str.to_re "G") (re.++ (str.to_re "Y") (str.to_re "D")))) (re.++ (str.to_re "H") (re.++ (str.to_re "K") (str.to_re "D")))) (re.++ (str.to_re "H") (re.++ (str.to_re "N") (str.to_re "L")))) (re.++ (str.to_re "H") (re.++ (str.to_re "R") (str.to_re "K")))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (str.to_re "G")))) (re.++ (str.to_re "H") (re.++ (str.to_re "U") (str.to_re "F")))) (re.++ (str.to_re "I") (re.++ (str.to_re "D") (str.to_re "R")))) (re.++ (str.to_re "I") (re.++ (str.to_re "L") (str.to_re "S")))) (re.++ (str.to_re "I") (re.++ (str.to_re "N") (str.to_re "R")))) (re.++ (str.to_re "I") (re.++ (str.to_re "Q") (str.to_re "D")))) (re.++ (str.to_re "I") (re.++ (str.to_re "R") (str.to_re "R")))) (re.++ (str.to_re "I") (re.++ (str.to_re "S") (str.to_re "K")))) (re.++ (str.to_re "J") (re.++ (str.to_re "M") (str.to_re "D")))) (re.++ (str.to_re "J") (re.++ (str.to_re "O") (str.to_re "D")))) (re.++ (str.to_re "J") (re.++ (str.to_re "P") (str.to_re "Y")))) (re.++ (str.to_re "K") (re.++ (str.to_re "E") (str.to_re "S")))) (re.++ (str.to_re "K") (re.++ (str.to_re "G") (str.to_re "S")))) (re.++ (str.to_re "K") (re.++ (str.to_re "H") (str.to_re "R")))) (re.++ (str.to_re "K") (re.++ (str.to_re "M") (str.to_re "F")))) (re.++ (str.to_re "K") (re.++ (str.to_re "P") (str.to_re "W")))) (re.++ (str.to_re "K") (re.++ (str.to_re "R") (str.to_re "W")))) (re.++ (str.to_re "K") (re.++ (str.to_re "W") (str.to_re "D")))) (re.++ (str.to_re "K") (re.++ (str.to_re "Y") (str.to_re "D")))) (re.++ (str.to_re "K") (re.++ (str.to_re "Z") (str.to_re "T")))) (re.++ (str.to_re "L") (re.++ (str.to_re "A") (str.to_re "K")))) (re.++ (str.to_re "L") (re.++ (str.to_re "B") (str.to_re "P")))) (re.++ (str.to_re "L") (re.++ (str.to_re "K") (str.to_re "R")))) (re.++ (str.to_re "L") (re.++ (str.to_re "R") (str.to_re "D")))) (re.++ (str.to_re "L") (re.++ (str.to_re "S") (str.to_re "L")))) (re.++ (str.to_re "L") (re.++ (str.to_re "Y") (str.to_re "D")))) (re.++ (str.to_re "M") (re.++ (str.to_re "A") (str.to_re "D")))) (re.++ (str.to_re "M") (re.++ (str.to_re "D") (str.to_re "L")))) (re.++ (str.to_re "M") (re.++ (str.to_re "G") (str.to_re "A")))) (re.++ (str.to_re "M") (re.++ (str.to_re "K") (str.to_re "D")))) (re.++ (str.to_re "M") (re.++ (str.to_re "M") (str.to_re "K")))) (re.++ (str.to_re "M") (re.++ (str.to_re "N") (str.to_re "T")))) (re.++ (str.to_re "M") (re.++ (str.to_re "O") (str.to_re "P")))) (re.++ (str.to_re "M") (re.++ (str.to_re "R") (str.to_re "O")))) (re.++ (str.to_re "M") (re.++ (str.to_re "U") (str.to_re "R")))) (re.++ (str.to_re "M") (re.++ (str.to_re "V") (str.to_re "R")))) (re.++ (str.to_re "M") (re.++ (str.to_re "W") (str.to_re "K")))) (re.++ (str.to_re "M") (re.++ (str.to_re "X") (str.to_re "N")))) (re.++ (str.to_re "M") (re.++ (str.to_re "Y") (str.to_re "R")))) (re.++ (str.to_re "M") (re.++ (str.to_re "Z") (str.to_re "N")))) (re.++ (str.to_re "N") (re.++ (str.to_re "A") (str.to_re "D")))) (re.++ (str.to_re "N") (re.++ (str.to_re "G") (str.to_re "N")))) (re.++ (str.to_re "N") (re.++ (str.to_re "I") (str.to_re "O")))) (re.++ (str.to_re "N") (re.++ (str.to_re "O") (str.to_re "K")))) (re.++ (str.to_re "N") (re.++ (str.to_re "P") (str.to_re "R")))) (re.++ (str.to_re "N") (re.++ (str.to_re "Z") (str.to_re "D")))) (re.++ (str.to_re "O") (re.++ (str.to_re "M") (str.to_re "R")))) (re.++ (str.to_re "P") (re.++ (str.to_re "A") (str.to_re "B")))) (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "N")))) (re.++ (str.to_re "P") (re.++ (str.to_re "G") (str.to_re "K")))) (re.++ (str.to_re "P") (re.++ (str.to_re "H") (str.to_re "P")))) (re.++ (str.to_re "P") (re.++ (str.to_re "K") (str.to_re "R")))) (re.++ (str.to_re "P") (re.++ (str.to_re "L") (str.to_re "N")))) (re.++ (str.to_re "P") (re.++ (str.to_re "Y") (str.to_re "G")))) (re.++ (str.to_re "Q") (re.++ (str.to_re "A") (str.to_re "R")))) (re.++ (str.to_re "R") (re.++ (str.to_re "O") (str.to_re "N")))) (re.++ (str.to_re "R") (re.++ (str.to_re "S") (str.to_re "D")))) (re.++ (str.to_re "R") (re.++ (str.to_re "U") (str.to_re "B")))) (re.++ (str.to_re "R") (re.++ (str.to_re "W") (str.to_re "F")))) (re.++ (str.to_re "S") (re.++ (str.to_re "A") (str.to_re "R")))) (re.++ (str.to_re "S") (re.++ (str.to_re "B") (str.to_re "D")))) (re.++ (str.to_re "S") (re.++ (str.to_re "C") (str.to_re "R")))) (re.++ (str.to_re "S") (re.++ (str.to_re "D") (str.to_re "G")))) (re.++ (str.to_re "S") (re.++ (str.to_re "E") (str.to_re "K")))) (re.++ (str.to_re "S") (re.++ (str.to_re "G") (str.to_re "D")))) (re.++ (str.to_re "S") (re.++ (str.to_re "H") (str.to_re "P")))) (re.++ (str.to_re "S") (re.++ (str.to_re "L") (str.to_re "L")))) (re.++ (str.to_re "S") (re.++ (str.to_re "O") (str.to_re "S")))) (re.++ (str.to_re "S") (re.++ (str.to_re "R") (str.to_re "D")))) (re.++ (str.to_re "S") (re.++ (str.to_re "S") (str.to_re "P")))) (re.++ (str.to_re "S") (re.++ (str.to_re "T") (str.to_re "D")))) (re.++ (str.to_re "S") (re.++ (str.to_re "Y") (str.to_re "P")))) (re.++ (str.to_re "S") (re.++ (str.to_re "Z") (str.to_re "L")))) (re.++ (str.to_re "T") (re.++ (str.to_re "H") (str.to_re "B")))) (re.++ (str.to_re "T") (re.++ (str.to_re "J") (str.to_re "S")))) (re.++ (str.to_re "T") (re.++ (str.to_re "M") (str.to_re "T")))) (re.++ (str.to_re "T") (re.++ (str.to_re "N") (str.to_re "D")))) (re.++ (str.to_re "T") (re.++ (str.to_re "O") (str.to_re "P")))) (re.++ (str.to_re "T") (re.++ (str.to_re "R") (str.to_re "Y")))) (re.++ (str.to_re "T") (re.++ (str.to_re "T") (str.to_re "D")))) (re.++ (str.to_re "T") (re.++ (str.to_re "W") (str.to_re "D")))) (re.++ (str.to_re "T") (re.++ (str.to_re "Z") (str.to_re "S")))) (re.++ (str.to_re "U") (re.++ (str.to_re "A") (str.to_re "H")))) (re.++ (str.to_re "U") (re.++ (str.to_re "G") (str.to_re "X")))) (re.++ (str.to_re "U") (re.++ (str.to_re "S") (str.to_re "D")))) (re.++ (str.to_re "U") (re.++ (str.to_re "Y") (str.to_re "U")))) (re.++ (str.to_re "U") (re.++ (str.to_re "Z") (str.to_re "S")))) (re.++ (str.to_re "V") (re.++ (str.to_re "E") (str.to_re "F")))) (re.++ (str.to_re "V") (re.++ (str.to_re "N") (str.to_re "D")))) (re.++ (str.to_re "V") (re.++ (str.to_re "U") (str.to_re "V")))) (re.++ (str.to_re "W") (re.++ (str.to_re "S") (str.to_re "T")))) (re.++ (str.to_re "X") (re.++ (str.to_re "A") (str.to_re "F")))) (re.++ (str.to_re "X") (re.++ (str.to_re "C") (str.to_re "D")))) (re.++ (str.to_re "X") (re.++ (str.to_re "O") (str.to_re "F")))) (re.++ (str.to_re "X") (re.++ (str.to_re "P") (str.to_re "F")))) (re.++ (str.to_re "Y") (re.++ (str.to_re "E") (str.to_re "R")))) (re.++ (str.to_re "Z") (re.++ (str.to_re "A") (str.to_re "R")))) (re.++ (str.to_re "Z") (re.++ (str.to_re "M") (str.to_re "W")))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.union (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re ",") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (re.opt (re.union (str.to_re ",") (str.to_re " "))) ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re "0")) (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)