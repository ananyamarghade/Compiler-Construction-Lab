# EXP 06 — Decimal ↔ Hexadecimal Conversion

## Aim

To convert decimal numbers to hexadecimal, and hexadecimal numbers to decimal, using Lex programs.

## Programs

| File | Direction | Pattern |
|---|---|---|
| `decimaltohexa.l` | Decimal → Hexadecimal | `[0-9]+` |
| `hexatodecimal.l` | Hexadecimal → Decimal | `[0-9A-F]+` |

### decimaltohexa.l

`makeHex()` converts the matched digit string to an integer, repeatedly divides it by 16 while collecting the remainders (`0`–`9`, `A`–`F`), and prints them in reverse order as `Hexadecimal: <value>`.

### hexatodecimal.l

`makeDec()` walks through the matched string, converting each digit (`0`–`9` or `A`–`F`) and accumulating `num = num * 16 + digit`, and prints `Decimal: <value>`.

In both programs, characters that do not match the number pattern are echoed unchanged, so several numbers separated by text can be converted in one run.

## Files

| File | Description |
|---|---|
| `decimaltohexa.l` | Decimal to hexadecimal converter |
| `hexatodecimal.l` | Hexadecimal to decimal converter |
| `decimal to hexa code.png` / `decimal to hexa output.png` | Code and output screenshots for the decimal → hexadecimal program |
| `hexa to decimal code.png` / `hexa to decimal output.png` | Code and output screenshots for the hexadecimal → decimal program |

## How to Run

Each program is built separately.

```bash
cd "EXP 06) Decimal ↔ Hexadecimal Conversion"

# Decimal -> Hexadecimal
flex decimaltohexa.l
gcc lex.yy.c -o dec2hex
./dec2hex

# Hexadecimal -> Decimal
flex hexatodecimal.l
gcc lex.yy.c -o hex2dec
./hex2dec
```

The programs read standard input until end of file (`Ctrl+D`). To convert numbers stored in a file, redirect it:

```bash
./dec2hex < numbers.txt
```

## Expected Behavior

**Decimal → Hexadecimal**

| Input | Output |
|---|---|
| `10` | `Hexadecimal: A` |
| `203` | `Hexadecimal: CB` |
| `567` | `Hexadecimal: 237` |
| `1515` | `Hexadecimal: 5EB` |

**Hexadecimal → Decimal**

| Input | Output |
|---|---|
| `A` | `Decimal: 10` |
| `B12C` | `Decimal: 45356` |
| `ABCD` | `Decimal: 43981` |
| `CD13AB` | `Decimal: 13439915` |

```text
Enter decimal number: 203
Hexadecimal: CB
```
## Screenshots

| | Code | Output |
|---|---|---|
| **Decimal → Hexadecimal** | ![decimal to hexa code](decimal%20to%20hexa%20code.png) | ![decimal to hexa output](decimal%20to%20hexa%20output.png) |
| **Hexadecimal → Decimal** | ![hexa to decimal code](hexa%20to%20decimal%20code.png) | ![hexa to decimal output](hexa%20to%20decimal%20output.png) |
