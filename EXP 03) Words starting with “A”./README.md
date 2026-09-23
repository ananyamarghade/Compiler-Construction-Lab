# EXP 03 — Words Starting with “A”
## Aim

To count the number of words starting with the letter “A” or "a' in the given input.

## Description

`exp3.l` uses two patterns and reports both counts when the input ends:

| Pattern | Counter | Printed as |
|---|---|---|
| `[Aa][A-Za-z0-9]*` | `a` — words beginning with `A` or `a` | `Number of a:` |
| `[0-9]+[eE]?[-+]?[\.[0-9]+]?` | `num` — numeric values such as `20`, `1243.24` or `10e-45` | `Numbers count:` |

Everything else is ignored by the catch-all rule `.|\n`. The match for the letter is case-insensitive (`A` and `a` are both counted).

## Files

| File | Description |
|---|---|
| `exp3.l` | Lex specification and C driver code |
| `exp3 code.png` | Screenshot of the code in the editor |
| `exp3 output.png` | Screenshot of sample runs |

## How to Run

```bash
cd "EXP 03) Words starting with “A”."
flex exp3.l
gcc lex.yy.c
./a.out
```

Type the input and press `Ctrl+D` to end it.

## Expected Behavior

```text
Input: I am an actor. I am 20yrs old.
Number of a: 4
Numbers count: 1
```
## Screenshots

**Code (editor session)**

![exp3 code](exp3%20code.png)

**Output**

![exp3 output](exp3%20output.png)
