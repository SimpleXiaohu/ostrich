(set-info :smt-lib-version 2.6)
(set-logic QF_SLIA)
(set-info :source |
Generated by: Dmitry Blotsky1, Federico Mora, Murphy Berzish, Yunhui Zheng, Ifaz Kabir, Vijay Ganesh, Zhengyang Lu
Generated on: 2018-01-24
Generator: StringFuzz
Application: Evaluate string solvers
Target solver: Z3str3, CVC4, Z3str2, Norn
Publications: Blotsky, D., Mora, F., Berzish, M., Zheng, Y., Kabir, I., & Ganesh, V. (2018). Stringfuzz: A fuzzer for string solvers. In CAV 2018.
Description: transformed by StringFuzz, a modular string and regex fuzzer, from an industrial benchmark
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "random")
(set-info :status unknown)

(declare-const x String)
(declare-const y String)
(assert (str.in_re x (str.to_re "11Jq'\r'W<2a3")))
(assert (= (str.len x) 25))
(assert (not (= x ",(KD1'\r'a{LG{&b&_'Cdc' 'XhK2VAZ.Kdmf'\t'9n\\pbddj2Fmw' '6Kr}k-3aabc""F1D6""_->y.f'\x0c''\n'^E$n_3d")))
(assert (not (= x "aacQM4/JTNct(hk4pO!i<Np' '=Eq?sd>Cnd@9a2$$'\t':W)OUul@hf,?Rfk'\r'DU92<[,NVy}&Tq|d%sL=;eh{@_;UN")))
(check-sat)

(exit)
