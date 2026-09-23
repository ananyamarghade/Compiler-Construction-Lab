# EXP 07 — Lines Ending with “COM”
## Aim

To count the number of input lines that end with `com`.

## Description

`exp7.l` uses the pattern `.*com$`, which matches a whole line whose last three characters are `com`, and increments the counter `c` for each such line. All other characters are ignored by the rule `.|\n`. When the input ends, the program prints the total.

## Files

| File | Description |
|---|---|
| `exp7.l` | Lex specification and C driver code |
| `exp7 code.png` | Screenshot of the code in the editor |
| `exp7 output.png` | Screenshot of sample runs |

## How to Run

```bash
cd "EXP 07) Lines ending with “COM”"
flex exp7.l
gcc lex.yy.c
./a.out
```

Enter one line at a time, press `Enter` after the last line, then press `Ctrl+D`.

## Expected Behavior

```text
Enter the input:google.com
microsoft.in
amazon.com
ibm.in
sitnagpur.in
sitnagpur/codetantra.com
https://google.com
There are 4 lines ending with com
```

## Screenshots

**Code (editor session)**

![exp7 code](exp7%20code.png)

**Output**

![exp7 output](exp7%20output.png)
