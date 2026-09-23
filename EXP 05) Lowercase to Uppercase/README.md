# EXP 05 — Lowercase to Uppercase and Vice Versa
## Aim

To convert lowercase letters to uppercase and uppercase letters to lowercase using a Lex program.

## Description

`exp5.l` defines a helper function `changeCase(char a)` in the definitions section:

- an uppercase letter (`A`–`Z`) is converted to lowercase by adding 32;
- any other letter is converted to uppercase by subtracting 32.

The rules apply it to every letter matched by `[A-Za-z]`; every other character is echoed unchanged. For each converted letter, `changeCase()` prints `The result is <letter>`.

## Files

| File | Description |
|---|---|
| `exp5.l` | Lex specification, `changeCase()` function and driver code |
| `exp5 code.png` | Screenshot of the code in the editor |
| `exp5 output.png` | Screenshot of sample runs |

## How to Run

```bash
cd "EXP 05) Lowercase to Uppercase"
flex exp5.l
gcc lex.yy.c
./a.out
```

Type the input and press `Ctrl+D` to end it.

## Expected Behavior

| Input | Output |
|---|---|
| `A` | `The result is a` |
| `b` | `The result is B` |
| `H` | `The result is h` |
| `z` | `The result is Z` |

```text
Enter the character: A
The result is a
```

## Screenshots

**Code (editor session)**

![exp5 code](exp5%20code.png)

**Output**

![exp5 output](exp5%20output.png)
