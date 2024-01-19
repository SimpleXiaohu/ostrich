(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\,*\s\s*\d{4}$|^(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)\,*\s\d{4}$|^(January|February|March|April|May|June|July|August|September|October|November|December)\,*\s\d{4}$|^(january|february|march|april|may|june|july|august|september|october|november|december)\,*\s\d{4}$
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "Jan") (str.to_re "Feb") (str.to_re "Mar") (str.to_re "Apr") (str.to_re "May") (str.to_re "Jun") (str.to_re "Jul") (str.to_re "Aug") (str.to_re "Sep") (str.to_re "Oct") (str.to_re "Nov") (str.to_re "Dec")) (re.* (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "jan") (str.to_re "feb") (str.to_re "mar") (str.to_re "apr") (str.to_re "may") (str.to_re "jun") (str.to_re "jul") (str.to_re "aug") (str.to_re "sep") (str.to_re "oct") (str.to_re "nov") (str.to_re "dec")) (re.* (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "January") (str.to_re "February") (str.to_re "March") (str.to_re "April") (str.to_re "May") (str.to_re "June") (str.to_re "July") (str.to_re "August") (str.to_re "September") (str.to_re "October") (str.to_re "November") (str.to_re "December")) (re.* (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "january") (str.to_re "february") (str.to_re "march") (str.to_re "april") (str.to_re "may") (str.to_re "june") (str.to_re "july") (str.to_re "august") (str.to_re "september") (str.to_re "october") (str.to_re "november") (str.to_re "december")) (re.* (str.to_re ",")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))))
; /\/jdb\/inf\.php\?id=[a-f0-9]{32}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//jdb/inf.php?id=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/Ui\u{0a}")))))
; ^(\d?)*(\.\d{1}|\.\d{2})?$
(assert (not (str.in_re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
(assert (> (str.len X) 10))
(check-sat)
