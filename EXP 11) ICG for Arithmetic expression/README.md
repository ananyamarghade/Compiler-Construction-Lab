# EXP 11 — Intermediate Code Generation for Arithmetic Expressions

## Aim

To generate intermediate (three-address style) code for an arithmetic expression using Lex and YACC.

## Description

The grammar evaluates an arithmetic expression bottom-up. Every time an operator rule is reduced, the parser emits one instruction of the form `tN = left op right`, using a global counter `t` to number the temporaries (`t1`, `t2`, ...). When the whole expression has been reduced, the final value is printed as `Result`.

**`exp11.l` — scanner**

| Rule | Action |
|---|---|
| `[A-Za-z_][A-Za-z0-9_]*` | returns `ID` |
| `[0-9]+` | returns `NUM`, with `yylval` set to the integer value |
| `[+*/-]` | returns the operator character |
| `.` or `\n` | ignored |

**`exp11.y` — grammar**

```yacc
%left '+' '-'
%left '*' '/'

S : E        { printf("Result: %d\n", $1); } ;

E : E '+' E  { $$ = $1 + $3; printf("t%d = %d + %d\n", t, $1, $3); t++; }
  | E '-' E  { $$ = $1 - $3; printf("t%d = %d - %d\n", t, $1, $3); t++; }
  | E '*' E  { $$ = $1 * $3; printf("t%d = %d * %d\n", t, $1, $3); t++; }
  | E '/' E  { $$ = $1 / $3; printf("t%d = %d / %d\n", t, $1, $3); t++; }
  | NUM
  | ID
  ;
```

`*` and `/` have higher precedence than `+` and `-`, so they are reduced (and their temporaries numbered) first. All operators are left associative.

## Files

| File | Description |
|---|---|
| `exp11.l` | Lex scanner |
| `exp11.y` | YACC grammar, `yyerror()` and `main()` |
| `exp11 lex.png` | Screenshot of the Lex code |
| `exp 11 yacc.png` | Screenshot of the YACC code |
| `exp11 output.png` | Screenshot of sample runs |

`y.tab.c`, `y.tab.h` and `lex.yy.c` are generated when the program is built.

## How to Run

```bash
cd "EXP 11) ICG for Arithmetic expression"
yacc -d exp11.y
flex exp11.l
gcc y.tab.c lex.yy.c
./a.out
```

Type one expression, then press `Ctrl+D` (the scanner discards newlines, so the parser only finishes when it sees end of input).

## Expected Behavior

| Input | Output |
|---|---|
| `67-7*2` | `t1 = 7 * 2`, `t2 = 67 - 14`, `Result: 53` |
| `7+8-12` | `t1 = 7 + 8`, `t2 = 15 - 12`, `Result: 3` |
| `4*5-2` | `t1 = 4 * 5`, `t2 = 20 - 2`, `Result: 18` |
| `55/5-2` | `t1 = 55 / 5`, `t2 = 11 - 2`, `Result: 9` |

```text
Enter an expression: 67-7*2
t1 = 7 * 2
t2 = 67 - 14
Result: 53
```

## Notes

- The program prints the **values** of the operands in each instruction (`t2 = 67 - 14`) and not the names of earlier temporaries (`t2 = 67 - t1`), so the output is a trace of the evaluation order rather than symbolic three-address code.
- The scanner does not set `yylval` for identifiers, so an `ID` carries whatever value `yylval` last held (`0` at program start). For example `a+b*2` prints `t1 = 0 * 2`, `t2 = 0 + 0`. Use numeric operands to get meaningful results.
- Dividing by zero is not checked and will crash the program with a floating point exception.
- Parentheses and any other characters are silently ignored by the scanner, and only one expression is handled per run.
- The screenshots were taken from an editor session where the files were named `exp12.l` and `exp12.y`; the logic matches the committed `exp11` files.

## Screenshots

**Lex specification**

![exp11 lex](exp11%20lex.png)

**YACC specification**

![exp11 yacc](exp%2011%20yacc.png)

**Output**

![exp11 output](exp11%20output.png)
