# EXP 09 — Desk Calculator

## Aim

To implement a desk calculator using Lex and YACC that evaluates infix arithmetic expressions, including exponentiation and postfix increment / decrement.

## Description

The scanner (`prac9.l`) breaks each input line into tokens and the parser (`prac9.y`) evaluates the expression using the grammar rules together with operator precedence declarations. Each line is evaluated independently and its value is printed as `RESULT: <value>`.

**`prac9.l` — scanner**

| Rule | Action |
|---|---|
| `[0-9]+` | returns `NUMBER`, with `yylval` set to the integer value |
| `"++"` | returns `inc` |
| `"--"` | returns `d` (decrement) |
| `[+*/^%-]` | returns the operator character itself |
| `[ \t]` | ignored |
| `\n` | returns `'\n'` (marks the end of a statement) |
| `.` | prints `ERROR!` for any other character |

**`prac9.y` — grammar**

```yacc
int error = 0;                 /* set to 1 by yyerror() */

%left '+' '-'
%left '*' '/' '%'
%right '^'
%left inc
%left d

stmt:
      stmt expr '\n' {
                        if (!error)
                            printf("RESULT: %d\n", $2);
                        error = 0;
                      }
    |
    ;

expr:
      NUMBER
    | expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr      /* reports an error if the divisor is 0 */
    | expr '%' expr      /* reports an error if the divisor is 0 */
    | expr '^' expr      /* power() helper, right associative */
    | expr inc           /* value + 1 */
    | expr d             /* value - 1 */
    ;
```

The global `error` flag is set by `yyerror()`. When a line finishes, the result is printed only if the flag is still `0`, and the flag is then reset, so a line that hit a division / modulo by zero shows just `Error` and the next line is evaluated normally.

Precedence is resolved from the declaration order: `+ -` bind loosest, then `* / %`, then `^` (right associative), then the postfix `++` and `--` operators, which bind tightest. Exponentiation is computed by a small integer `power()` function, so no math library is needed.

## Files

| File | Description |
|---|---|
| `prac9.l` | Lex scanner (tokens returned to the parser) |
| `prac9.y` | YACC grammar, `error` flag, `power()`, `yyerror()` and `main()` |
| `exp9 lex.png` | Screenshot of the Lex code |
| `exp9 yacc.png` | Screenshot of the YACC code |
| `exp9 output.png` | Screenshot of sample runs |

`y.tab.c`, `y.tab.h` and `lex.yy.c` are generated when the program is built.

## How to Run

```bash
cd "EXP 09) Desk Calculator"
yacc -d prac9.y
flex prac9.l
gcc y.tab.c lex.yy.c
./a.out
```

Type an expression and press `Enter`; repeat for as many lines as needed, then press `Ctrl+D`.

## Expected Behavior

| Input | Output |
|---|---|
| `10+5*2` | `RESULT: 20` |
| `2^5` | `RESULT: 32` |
| `6 - 5++` | `RESULT: 0` |
| `2^4+6*3-5` | `RESULT: 29` |
| `50-12*2+36/6+17%5` | `RESULT: 34` |
| `3^4 - 79++` | `RESULT: 1` |
| `23++` | `RESULT: 24` |
| `20--+5*3` | `RESULT: 34` |
| `45-6*4+72/8+19%6` | `RESULT: 31` |
| `100+25*4-64/8+17%6-3^2` | `RESULT: 188` |
| `50+20*3-40/0+7` | `Error` (no `RESULT` line) |
| `40/0` | `Error` (no `RESULT` line) |

```text
10+5*2
RESULT: 20
2^5
RESULT: 32
6 - 5++
RESULT: 0
40/0
Error
```

## Notes

- `5++` evaluates to `6` (the expression value plus one), it does not modify a variable; there are no variables in this calculator. This is why `6 - 5++` gives `0`.
- The scanner always reads `--` as the decrement token, so `20--+5*3` means `(20-1) + 5*3 = 34`. An expression such as `5--3` is therefore a syntax error rather than `5 - (-3)`; the grammar has no unary minus.
- All arithmetic is integer arithmetic: `/` truncates and `^` uses repeated multiplication (a negative exponent gives `1`).
- `yyerror()` sets the `error` flag and prints `Error`. It is called for syntax errors and for the division / modulo by zero checks.
- After a division or modulo by zero, only `Error` is printed for that line and the calculator carries on with the next line.
- A genuine syntax error (for example `3 +`) also prints `Error`, but the grammar has no error-recovery rule, so the program then ends.

## Screenshots

**Lex specification**

![exp9 lex](exp9%20lex.png)

**YACC specification**

![exp9 yacc](exp9%20yacc.png)

**Output**

![exp9 output](exp9%20output.png)
