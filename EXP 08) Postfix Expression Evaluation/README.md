# EXP 08 — Postfix Expression Evaluation

## Aim

To evaluate a postfix expression using Lex and YACC.

## Description

The experiment combines a Lex scanner and a YACC parser. Rather than evaluating the expression with an explicit stack array, the grammar itself is written so that YACC's own parser stack does the evaluation: each operator rule pops the two operands already reduced on the stack, combines them, and pushes the result back as `$$`. A line is read fully before its result is printed, so entering a well-formed postfix expression one line at a time produces one `RESULT:` line for each.

**`exp8.l` — scanner**

| Rule | Action |
|---|---|
| `[0-9]+` | returns `NUMBER`, with `yylval` set to the integer value |
| `[-+*/^%]` | returns the operator character itself |
| `++` | intended to return a two-character increment operator |
| `[ \t]` | ignored |
| `\n` | returns `'\n'` (marks the end of a statement) |
| `.` | prints `ERROR!` for any other character |

**`exp8.y` — grammar**

```yacc
stmt:
      stmt expr '\n' { printf("RESULT: %d\n", $2); }
    |
    ;

expr:
      NUMBER           { $$ = $1; }
    | expr expr '+'    { $$ = $1 + $2; }
    | expr expr '-'    { $$ = $1 - $2; }
    | expr expr '*'    { $$ = $1 * $2; }
    | expr expr '/'    { $$ = $1 / $2; }
    | expr expr '%'    { $$ = $1 % $2; }
    | expr '++'        { $$ = $1++; }
    | expr expr '^'    { $$ = (int)pow($1, $2); }
    ;
```

`^` is evaluated with `pow()` from `math.h`, so the build must be linked with `-lm`.

## Files

| File | Description |
|---|---|
| `exp8.l` | Lex scanner (tokens returned to the parser) |
| `exp8.y` | YACC grammar, `yyerror()` and `main()` |
| `lex code.png` | Screenshot of the Lex code |
| `yacc code.png` | Screenshot of the YACC code |
| `exp8 output.png` | Screenshot of sample runs |

`y.tab.c`, `y.tab.h` and `lex.yy.c` are generated when the program is built.

## How to Run

```bash
cd "EXP 08) Postfix Expression Evaluation"
yacc -d exp8.y
flex exp8.l
gcc y.tab.c lex.yy.c -ll -lm
./a.out
```

Type a postfix expression and press `Enter`; repeat for as many lines as needed, then press `Ctrl+D`.

## Expected Behavior

| Input | Output |
|---|---|
| `45 6 ^ 7 / 90 + 3 - 2 %` | `RESULT: -1` |
| `2 34 + 16 - 35 * 35/ 2 ^` | `RESULT: 400` |
| `45 6 * 3 -` | `RESULT: 267` |
| `90 67 - 9 * 3 %` | `RESULT: 0` |
| `63 7 / 89 + 2 - 3 ^` | `RESULT: 884736` |
| `3 + 4` (infix, not postfix) | `Error` |

```text
45 6 ^ 7 / 90 + 3 - 2 %
RESULT: -1
2 34 + 16 - 35 * 35/ 2 ^
RESULT: 400
3 + 4
Error
```

A character the scanner does not recognize prints `ERROR!`; a token sequence the grammar does not accept (such as an infix expression, or any line after the first error) prints `Error` from `yyerror()` and ends the program, since the grammar has no error-recovery rule.

## Notes

- **`++` does not compile with the Flex/Bison versions used to verify this README.** In `exp8.l`, the rule `++` is a bare `+` quantifier with nothing to its left, which Flex rejects (`unrecognized rule`); in `exp8.y`, `'++'` is a two-character literal, which Bison rejects (`extra characters in character literal`). The output screenshot below shows the program built and ran successfully — including a `5 ++` style line — which indicates the lab machine used a more lenient Lex/YACC toolchain than the one used to check this file. If `exp8.l`/`exp8.y` fail to build as shown above, this rule is the likely cause.
- Even where the `++` rule does compile, `$$ = $1++` uses C's post-increment operator, which evaluates to `$1`'s original value, not `$1 + 1`. So the rule does not increment the result the way its name suggests.
- The `'%'` rule is C's modulo operator applied to `int`, so results follow C's truncating integer division and its sign convention for negative operands.

## Screenshots

| Lex code | YACC code |
|---|---|
| ![Lex code](lex%20code.png) | ![YACC code](yacc%20code.png) |

**Output**

![exp8 output](exp8%20output.png)
