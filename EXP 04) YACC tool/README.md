# EXP 04 — Introduction to YACC Tool

## Aim

To get introduced to the YACC tool and the format of a YACC specification, by building a parser that checks whether an arithmetic expression is valid.

## Description

The experiment combines a Lex scanner and a YACC parser.

**`exp4.l` — scanner**

| Rule | Action |
|---|---|
| `[0-9]+` | returns the `NUM` token |
| `[+*]` | returns the operator character itself |
| `[ \t]` | returns `0`, which the parser treats as end of input |
| `.\|\n` | ignored |

**`exp4.y` — parser**

```yacc
%token  NUM
%%
E:E'+'T|T;
T:T'*'F|F;
F:'('E')'|NUM;
%%
```

## Files

| File | Description |
|---|---|
| `exp4.l` | Lex scanner (tokens returned to the parser) |
| `exp4.y` | YACC grammar and `main()` / `yyerror()` |
| `lex code.png` | Screenshot of the Lex code |
| `yacc code.png` | Screenshot of the YACC code |
| `exp4 output.png` | Screenshot of sample runs |

`y.tab.c`, `y.tab.h` and `lex.yy.c` are generated when the program is built.

## How to Run

```bash
cd "EXP 04) YACC tool"
yacc -d exp4.y
flex exp4.l
gcc y.tab.c lex.yy.c -ll
./a.out
```

Type an expression and press `Enter`.

## Expected Behavior

| Input | Output |
|---|---|
| `8*4+5` | `VALID Expression` |
| `34*5+89` | `VALID Expression` |
| `456` | `VALID Expression` |
| `8+*3` | `INVALID Expression` |

```text
Enter an Expression: 8*4+5
VALID Expression
```

## Screenshots

| Lex code | YACC code |
|---|---|
| ![Lex code](lex%20code.png) | ![YACC code](yacc%20code.png) |

**Output**

![exp4 output](exp4%20output.png)
