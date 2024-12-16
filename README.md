# OSTRICH-RECL

OSTRICH-RECL is the extension of [OSTRICH](https://github.com/uuverifiers/ostrich) for handling regex-counting and string-length more efficiently.

## Using OSTRICH-RECL

After installing [the Scala Build tool (SBT)](https://www.scala-sbt.org/), you can assemble a JAR file using `sbt assembly`. To run it, use the `ostrichCEA` script in the root folder.

See `./ostrichCEA -h` for more options.

The techniques behind OSTRICH-RECL are explained in the paper [An Efficient String Solver for String Constraints with
Regex-Counting and String-Length]. This work is a subsequent of [OSTRICH+](https://link.springer.com/chapter/10.1007/978-3-030-59152-6_18) and support all operation in OSTRICH+.

## Web Interface

For experiments, OSTRICH-RECL can also be used through its [web interface.](https://eldarica.org/ostrich-popl24/) with Cost-enriched backend.

## Input Format

OSTRICH accepts constraints written using the [SMT-LIB theory of strings](http://smtlib.cs.uiowa.edu/theories-UnicodeStrings.shtml).

### Regex-counting and String-length in Smtlib2.6

| Name                | Explanation                                |
|---------------------|--------------------------------------------|
| ((_ re.loop n m) r) | Repeat the regex r from n times to m times |
| (str.len x)         | The length of string variable x            |

