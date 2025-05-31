The bench is consisted of constraints in sequence theory where the element type is set to String sort. 

There are two types of constraints in the benchmark:
- `bench_base`: The benchmarks contains basic operations of sequence theory, such as `seq.len`, `seq.++`, `seq.at`, `seq.nth` and `seq.extract`. Note that we also use `seq.write` in the benchmark, which can be transformed to `seq.++`, `seq.extract` and `seq.len` in the SMT-LIB format.

- `bench_ext`: The benchmarks contains all operations of `benc_base` and extended operations of sequence theory, such as `str.split`, `seq.join`, `seq.match_all` and `seq.filter`.

The structure of the benchmark is as follows:
```
bench_ext/
    ├── handcraft_realworld_translate/
    ├── handcraft_unittest/
bench_base/
    ├── handcraft_template/
```
The `handcraft_realworld_translate` contains the benchmarks that are translated from real-world code snippets by hand. `handcraft_unittest` contains the benchmarks we used in the unit tests of the SMT solver. `handcraft_template` contains the benchmarks that are generated from 6 different templates.

The templates are designed to cover the basic operations of sequence theory. The templates are as follows:
- Template 1 : Concatenate and write into a sequence, then verify the result and its length.

```
(seq.++ (seq.unit "a") (seq.unit "b"))
(seq.write ... 1 "xyz")
(seq.nth ... 1)
(seq.len ...)
(str.in_re ...)
```
- Template 2 : Extract a sub-sequence and check regular expression membership on an element.

```
(seq.extract (seq.++ ...) 0 2)
(seq.nth ... 1)
(str.in_re ...)
```
- Template 3 : Access a specific index using seq.at and validate it.

```
(seq.at (seq.++ ...) 1)
(seq.nth ... 0)
(str.in_re ...)
```
- Template 4 : Modify and extract from a sequence, check both length and contents.

```
(seq.write ...)
(seq.extract ... 0 2)
(seq.nth ... 1)
(seq.len ...)
(str.in_re ...)
```
- Template 5 : Write and then access via seq.at, check value and regex.

```
(seq.write ...)
(seq.at ... 0)
(seq.nth ... 0)
(str.in_re ...)
```
- Template 6 : Simple extraction and validation on a single element.

```
(seq.extract ... 1 1)
(seq.nth ... 0)
(str.in_re ...)
```