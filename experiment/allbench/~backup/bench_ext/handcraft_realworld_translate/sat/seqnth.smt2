; def get_extension(filename):
;     return filename.split('.')[-1]
(set-logic QF_SLIA)

(declare-const filename String)
(declare-const parts (Seq String))
(declare-const ext String)

(assert (= filename "report.final.pdf"))
(assert (= parts (str.split filename ".")))
(assert (= ext (seq.nth parts (- (seq.len parts) 1))))
(assert (= ext "pdf"))

(check-sat)
(get-model)