;test regex ^\d{4}\s(Alfa Romeo|Aston Martin|Audi|Bentley|Benz|BMW|Bugatti|Cadillac|Chevrolet|Chrysler|Citroen|Corvette|DAF|Dacia|Daewoo|Daihatsu|Datsun|De Lorean|Dino|Dodge|Farboud|Ferrari|Fiat|Ford|Honda|Hummer|Hyundai|Jaguar|Jeep|KIA|Koenigsegg|Lada|Lamborghini|Lancia|Land Rover|Lexus|Ligier|Lincoln|Lotus|Martini|Maserati|Maybach|Mazda|McLaren|Mercedes|Mercedes-Benz|Mini|Mitsubishi|Nissan|Noble|Opel|Peugeot|Pontiac|Porsche|Renault|Rolls-Royce|Rover|Saab|Seat|Skoda|Smart|Spyker|Subaru|Suzuki|Toyota|Vauxhall|Volkswagen|Volvo)\s
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re "o")))))))))) (re.++ (str.to_re "A") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (str.to_re "n"))))))))))))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "d") (str.to_re "i"))))) (re.++ (str.to_re "B") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re "y")))))))) (re.++ (str.to_re "B") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "z"))))) (re.++ (str.to_re "B") (re.++ (str.to_re "M") (str.to_re "W")))) (re.++ (str.to_re "B") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "i")))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (str.to_re "c"))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re "t")))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (re.++ (str.to_re "s") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "e") (str.to_re "n")))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "e"))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "A") (str.to_re "F")))) (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "i") (str.to_re "a")))))) (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (str.to_re "o"))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (str.to_re "u"))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (str.to_re "n"))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (str.to_re "n")))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "o"))))) (re.++ (str.to_re "D") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "g") (str.to_re "e")))))) (re.++ (str.to_re "F") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (str.to_re "d")))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "i")))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (str.to_re "t"))))) (re.++ (str.to_re "F") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "d"))))) (re.++ (str.to_re "H") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (str.to_re "a")))))) (re.++ (str.to_re "H") (re.++ (str.to_re "u") (re.++ (str.to_re "m") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "H") (re.++ (str.to_re "y") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "i")))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (str.to_re "r"))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "p"))))) (re.++ (str.to_re "K") (re.++ (str.to_re "I") (str.to_re "A")))) (re.++ (str.to_re "K") (re.++ (str.to_re "o") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (str.to_re "g"))))))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (str.to_re "a"))))) (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "i")))))))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "i") (str.to_re "a"))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "r"))))))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "u") (str.to_re "s")))))) (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (str.to_re "n")))))))) (re.++ (str.to_re "L") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (str.to_re "s")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "i")))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "i"))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (str.to_re "h")))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "z") (re.++ (str.to_re "d") (str.to_re "a")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "c") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "n")))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "s"))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "-") (re.++ (str.to_re "B") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (str.to_re "z")))))))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "i"))))) (re.++ (str.to_re "M") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (str.to_re "i"))))))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (str.to_re "n"))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (str.to_re "e")))))) (re.++ (str.to_re "O") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (str.to_re "l"))))) (re.++ (str.to_re "P") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "o") (str.to_re "t")))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "a") (str.to_re "c")))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (str.to_re "e")))))))) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "t")))))))) (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.++ (str.to_re "-") (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "y") (re.++ (str.to_re "c") (str.to_re "e")))))))))))) (re.++ (str.to_re "R") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (str.to_re "r")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (str.to_re "b"))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (str.to_re "t"))))) (re.++ (str.to_re "S") (re.++ (str.to_re "k") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (str.to_re "a")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "t")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "u"))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "u") (re.++ (str.to_re "z") (re.++ (str.to_re "u") (re.++ (str.to_re "k") (str.to_re "i"))))))) (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re "y") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re "a"))))))) (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "u") (re.++ (str.to_re "x") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "l"))))))))) (re.++ (str.to_re "V") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "k") (re.++ (str.to_re "s") (re.++ (str.to_re "w") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (str.to_re "n"))))))))))) (re.++ (str.to_re "V") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "v") (str.to_re "o")))))) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)