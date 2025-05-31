# Template3
This template is used to test read and write operations on sequences in SMT-LIB. The setting are as follows:
- Initial sequence length randomly from 3 to 6
- Number of writes and reads randomly from 1 to 6
- Length of write chains randomly from 1 to 4
- Random write/read positions
- Equality or disequality encoded using regex membership and complement

```
(set-logic ALL)
(define-fun reg () RegLan {reg})

(declare-const x String)
(declare-const y String)

(define-fun base () {inital seq})
(define-fun w_x_1 () (Seq String) (seq.write base 1 x))
(define-fun w_x_2 () (Seq String) (seq.write w_x_1 2 x))
...
(define-fun r_x_1 () String (seq.nth w_x_2 0))
(define-fun r_y_1 () String (seq.nth w_y_2 1))
...
(assert (str.in_re r_x_1 reg))
(assert (str.in_re r_y_1 reg))
..

(check-sat)
(get-model)
```