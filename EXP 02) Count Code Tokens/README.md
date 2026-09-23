# EXP 02 — Count Code Tokens

## Aim

To count the words, keywords, identifiers, comments, lines and spaces in an input file.

## Description

`exp2.l` scans the input and maintains a counter for each token class. When the input ends, it prints the totals for words, identifiers and keywords.

| Token class | Pattern / rule | Reported |
|---|---|---|
| Words | `[ \t\n]` — incremented once for every space, tab or newline | Yes (`Words Count`) |
| Keywords | `int`, `float`, `char`, `double`, `if`, `else`, `for`, `while`, `return`, `break`, `case`, `const`, `continue`, `default`, `do`, `long`, `short`, `signed`, `sizeof`, `struct`, `switch`, `void` | Yes (`Keywords Count`) |
| Identifiers | `[A-Za-z_][A-Za-z0-9_]*` | Yes (`Identifiers Count`) |
| Comments | `"//".*` — single-line comments | YEs (`Comments Count`) |
| Spaces / lines | Variables `spaces` and `line` are declared | Yes {`Spaces Count`) |

Since Lex chooses the longest match (and the earliest rule on a tie), an entire `//` comment is consumed as one token, so words inside a comment are not counted as identifiers.

## Files

| File | Description |
|---|---|
| `exp2.l` | Lex specification and C driver code |
| `exp2 code.png` | Screenshot of the code in the editor |
| `exp2 output.png` | Screenshot of a sample run |

## How to Run

```bash
cd "EXP 02) Count Code Tokens"
flex exp2.l
gcc lex.yy.c
./a.out
```

Type or paste the input, then press `Ctrl+D` to end it.

## Expected Behavior

```text
Enter a String: int x;
Words Count: 2
Identifiers Count: 1
Keywords Count: 1
```

## Notes

- `flex` prints `warning, rule cannot be matched` for the `[\n]` rule near the end of the rules section. That rule comes after `[ \t\n]`, which already matches every newline, so it is never reached. The program still builds and runs.
- The last keyword alternative is written as `"return|signed|unsigned|default|case|switch|struct|const"` with a single pair of quotes, so it is treated as one literal string. As a result, `return`, `signed`, `unsigned`, `default`, `case`, `switch`, `struct` and `const` are counted as identifiers, not keywords.
- The screenshots in this folder were taken from an editor session (`prac2.l`) whose code differs from the committed `exp2.l`: it reports Words, Keywords, Identifiers, Comments, Spaces and Lines, and includes a longer keyword list. The output screenshot therefore shows more counters than the committed program prints.

## Screenshots

**Code (editor session)**

![exp2 code](exp2%20code.png)

**Output (editor session)**

![exp2 output](exp2%20output.png)
