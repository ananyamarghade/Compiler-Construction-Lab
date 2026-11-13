# EXP 10 — FOR Loop Expressions

## Aim

To write a Lex and YACC program that checks whether an input statement is a valid `for` loop header or a valid ternary (conditional) expression.

## Description

The scanner (`exp10.l`) converts the input into tokens and the parser (`exp10.y`) checks the token sequence against the grammar. For every valid statement the parser prints a message; for anything else it prints `Invalid statement`.

**`exp10.l` — scanner**

| Rule | Token returned |
|---|---|
| `"for"` | `FOR` |
| `[A-Za-z_][A-Za-z0-9_]*` | `ID` |
| `[0-9]+` | `NUM` |
| `"++"` / `"--"` | `INC` / `DEC` |
| `>=` `<=` `==` `!=` `>` `<` | `RELOP` |
| `=` `?` `:` `(` `)` `;` | the character itself |
| whitespace and newlines | ignored |
| any other character | returned as is |

Since `"for"` is listed before the identifier rule, it is recognised as the keyword and not as an `ID`.

**`exp10.y` — grammar**

```yacc
input : stmt
      | input stmt
      ;

stmt  : FOR '(' ID '=' NUM ';' ID RELOP NUM ';' ID update ')'
          { printf("Valid for loop\n"); }
      | ID '?' ID ':' ID
          { printf("Valid ternary expression\n"); }
      | '(' ID ')' '?' '(' ID ')' ':' '(' ID ')'
          { printf("Valid ternary expression\n"); }
      | ID RELOP ID '?' '(' ID ')' ':' '(' ID ')'
          { printf("Valid ternary expression\n"); }
      | '(' ID RELOP ID ')' '?' ID ':' ID
          { printf("Valid ternary expression\n"); }
      ;

update : INC
       | DEC
       ;
```

Accepted shapes:

| Form | Example |
|---|---|
| `for` loop | `for(i=0;i<5;i++)` |
| Ternary | `a?b:c` |
| Ternary with bracketed operands | `(a)?(b):(c)` |
| Ternary with comparison | `a<b?(a):(b)` |
| Ternary with bracketed comparison | `(a<b)?a:b` |

## Files

| File | Description |
|---|---|
| `exp10.l` | Lex scanner |
| `exp10.y` | YACC grammar, `yyerror()` and `main()` |
| `exp10 lex.png` | Screenshot of the Lex code |
| `exp10 yacc.png` | Screenshot of the YACC code |
| `exp10 output.png` | Screenshot of sample runs |

`y.tab.c`, `y.tab.h` and `lex.yy.c` are generated when the program is built.

## How to Run

```bash
cd "EXP 10) FOR Loop Expressions"
yacc -d exp10.y
flex exp10.l
gcc y.tab.c lex.yy.c
./a.out
```

Type one or more statements, then press `Ctrl+D`.

## Expected Behavior

| Input | Output |
|---|---|
| `for(i=5;i>0;i--)` | `Valid for loop` |
| `for(count=0;count<10;count++)` | `Valid for loop` |
| `a?b:c` | `Valid ternary expression` |
| `(a<b)?a:b` | `Valid ternary expression` |
| `for(i=0 i<9; i++)` (missing `;`) | `Invalid statement` |
| `for(i=0;i<5;i--` followed by `;` | `Invalid statement` |
| `a :b ? c` | `Invalid statement` |
| `a?b ::c` | `Invalid statement` |

```text
Enter statement(s):
for(i=5;i>0;i--)
Valid for loop
a?b:c
Valid ternary expression
(a<b)?a:b
Valid ternary expression
```

## Notes

- The loop bounds must be numbers: the initial value and the limit are `NUM`, so `for(i=0;i<n;i++)` is reported as invalid. The update part accepts only `++` or `--`.
- Only the loop header is checked; there is no loop body in the grammar.
- Newlines are skipped by the scanner, so a statement can be spread over several lines.
- The grammar has no error-recovery rule, so after the first `Invalid statement` the program stops.
- `exp10.l` starts with four lines of name / PRN / section / date text placed before the `%{` block. They did not stop flex 2.6.4 from building the file, but moving them inside a `/* ... */` comment is the safer form.
- The screenshots were taken from an editor session where the files were named `prac10.l` and `prac10.y`.

## Screenshots

**Lex specification**

![exp10 lex](exp10%20lex.png)

**YACC specification**

![exp10 yacc](exp10%20yacc.png)

**Output**

![exp10 output](exp10%20output.png)
