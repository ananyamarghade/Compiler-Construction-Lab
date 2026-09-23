# EXP 01 — Introduction to LEX Tool, Metadata and Patterns

## Aim

Introduction to LEX tool, metadata and patterns.

## Programs

| File | Purpose |
|---|---|
| `practical1-1.l` | Detects the word `hello` in the input and prints `Found hello!` for every occurrence. |
| `practical1-2.l` | Counts single-line comments (`//` up to the end of the line) and prints the total. |

### practical1-1.l

- The pattern `hello` triggers `printf("Found hello!")`.
- The catch-all rule `.|\n` has an empty action, so every other character is discarded rather than echoed.
- The match is case-sensitive and works on any part of the input, so multiple occurrences are reported one after another.

### practical1-2.l

- The pattern `"//".*` increments the `comments` counter for each `//` comment.
- All other characters are discarded by the catch-all rule.
- The total is printed after the input ends: `Comments Count: <n>`.

Both programs read standard input until end of file, so end the input with `Ctrl+D`.

## How to Run

```bash
cd "EXP 01) LEX tool, metadata and patterns"

# Program 1
flex practical1-1.l
gcc lex.yy.c -o hello
./hello

# Program 2
flex practical1-2.l
gcc lex.yy.c -o comments
./comments
```

## Expected Behavior

`practical1-1.l`

```text
Enter a String: hello SIT!
Found hello!
```

`practical1-2.l`

```text
Enter a String: void main(){
int a; //a is an integer
float b; //b is a floating point value
int c = a+b;
getch();
}
Comments Count: 2
```

## Screenshots

| Program | Output |
|---|---|
| `practical1-1.l` | ![practical1-1 output](prac1-1%20output.png) |
| `practical1-2.l` | ![practical1-2 output](prac1-2%20output.png) |

