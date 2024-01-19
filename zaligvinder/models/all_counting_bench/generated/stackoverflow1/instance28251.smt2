;test regex ^([\u{00}-\x7F]|[\xC2-\xDF][\u{80}-\xBF]|\xE0[\xA0-\xBF][\u{80}-\xBF]|[\xE1-\xEC][\u{80}-\xBF]{2}|\xED[\u{80}-\x9F][\u{80}-\xBF]|[\xEE-\xEF][\u{80}-\xBF]{2}|\xF0[\u{90}-\xBF][\u{80}-\xBF]{2}|[\xF1-\xF3][\u{80}-\xBF]{3}|\xF4[\u{80}-\x8F][\u{80}-\xBF]{2})*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.* (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "\u{00}" "\u{7f}") (re.++ (re.range "\u{c2}" "\u{df}") (re.range "\u{80}" "\u{bf}"))) (re.++ (str.to_re "\u{e0}") (re.++ (re.range "\u{a0}" "\u{bf}") (re.range "\u{80}" "\u{bf}")))) (re.++ (re.range "\u{e1}" "\u{ec}") ((_ re.loop 2 2) (re.range "\u{80}" "\u{bf}")))) (re.++ (str.to_re "\u{ed}") (re.++ (re.range "\u{80}" "\u{9f}") (re.range "\u{80}" "\u{bf}")))) (re.++ (re.range "\u{ee}" "\u{ef}") ((_ re.loop 2 2) (re.range "\u{80}" "\u{bf}")))) (re.++ (str.to_re "\u{f0}") (re.++ (re.range "\u{90}" "\u{bf}") ((_ re.loop 2 2) (re.range "\u{80}" "\u{bf}"))))) (re.++ (re.range "\u{f1}" "\u{f3}") ((_ re.loop 3 3) (re.range "\u{80}" "\u{bf}")))) (re.++ (str.to_re "\u{f4}") (re.++ (re.range "\u{80}" "\u{8f}") ((_ re.loop 2 2) (re.range "\u{80}" "\u{bf}"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)