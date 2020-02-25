For simplicity we will just ignore additional parameters.

For lexing the bat(batch) file will look something like this.

```
flex lexer.l
gcc lex.yy.c
a.exe
```

First flex will generate a lexical analyzer, as it is lexical analyzer generator. 😜 By default, it will produce a `.c` source code name `lex.yy.c`.
Now we need to compile that. We are doing that in the second line. By default it will generate `a.exe`. Now it will run.

_input_
```
sd.
.asd
asd
.
234
def
defasd
```
_output_
```

sd.
s2 : sd.

.asd
s1 : .asd

asd
s2 : asd

.
.
234
234
def
DEF  found

defasd
s2 : defasd
```

It's all about regular expression, we are already lexing, but for some reason `[a-z]+` is being lexed as `s2`.

We will figure that in a while, till then adios.
