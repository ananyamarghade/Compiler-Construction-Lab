<div align="center">
Compiler Construction Lab
<p> <strong>• Compiler Construction Experiments •</strong> </p> <p> <img src="https://img.shields.io/badge/Language-C-blue?style=for-the-badge" alt="C"> <img src="https://img.shields.io/badge/Lex%2FFlex-Lexical%20Analysis-orange?style=for-the-badge" alt="Lex/Flex"> <img src="https://img.shields.io/badge/YACC-Parsing-purple?style=for-the-badge" alt="YACC"> <img src="https://img.shields.io/badge/Platform-Ubuntu-green?style=for-the-badge" alt="Ubuntu"> </p> </div>
🔬 Compiler Construction Lab

Lexical analysis → Token recognition → Parsing → Expression processing → Intermediate code generation

This repository contains the laboratory work for the Compiler Construction course. It includes practical implementations using Lex/Flex, YACC and C, along with source code, execution screenshots and experiment-wise documentation.

Each experiment is organized in its own folder so that the programs, screenshots and explanations remain easy to navigate.

👩‍💻 Author
	
Name	Ananya Marghade
PRN	24070521004
Section	A
Batch	A1
Course	Compiler Construction Lab
🛠️ Technologies Used
Technology	Purpose
Lex / Flex	Lexical analyser design and token recognition
YACC / Bison	Grammar and parser construction
C / GCC	Host language and compilation
Ubuntu / Linux Terminal	Build and execution environment
Core Concepts Covered
Lexical analysis
Regular expressions and patterns
Token recognition
Keywords and identifiers
Comments, words, lines and spaces
Lex actions and counters
YACC grammar specifications
Lex + YACC integration
Case conversion
Number-system conversion
Pattern matching
Postfix expression evaluation
Operator precedence and associativity
Desk calculator with increment / decrement operators
Syntax validation of for loops and ternary expressions
Intermediate code generation (three-address style)
Variable declaration statements
📚 Experiment Index
No.	Experiment	Tool	Source Files	Docs
01	Introduction to LEX tool, metadata and patterns	Lex	practical1-1.l, practical1-2.l	📖 View
02	Count comments, keywords, identifiers, words, lines and spaces	Lex	exp2.l	📖 View
03	Count words starting with “A”	Lex	exp3.l	📖 View
04	Introduction to YACC tool and YACC code format	Lex + YACC	exp4.l, exp4.y	📖 View
05	Conversion of lowercase to uppercase and vice versa	Lex	exp5.l	📖 View
06	Decimal ↔ hexadecimal conversion	Lex	decimaltohexa.l, hexatodecimal.l	📖 View
07	Test lines ending with “COM”	Lex	exp7.l	📖 View
08	Postfix expression evaluation	Lex + YACC	exp8.l, exp8.y	📖 View
09	Desk calculator	Lex + YACC	prac9.l, prac9.y	📖 View
10	for loop and ternary expression validation	Lex + YACC	exp10.l, exp10.y	📖 View
11	Intermediate code generation for arithmetic expressions	Lex + YACC	exp11.l, exp11.y	📖 View
EXTRA	Variable declaration statements	Lex + YACC	variable.l, variable.y	📖 View
📂 Repository Structure
text
Compiler-Construction-Lab/
│
├── README.md
│
├── EXP 01) LEX tool, metadata and patterns/
│   ├── README.md
│   ├── practical1-1.l
│   ├── practical1-2.l
│   ├── prac1-1 output.png
│   └── prac1-2 output.png
│
├── EXP 02) Count Code Tokens/
│   ├── README.md
│   ├── exp2.l
│   ├── exp2 code.png
│   └── exp2 output.png
│
├── EXP 03) Words starting with “A”./
│   ├── README.md
│   ├── exp3.l
│   ├── exp3 code.png
│   └── exp3 output.png
│
├── EXP 04) YACC tool/
│   ├── README.md
│   ├── exp4.l
│   ├── exp4.y
│   ├── lex code.png
│   ├── yacc code.png
│   └── exp4 output.png
│
├── EXP 05) Lowercase to Uppercase/
│   ├── README.md
│   ├── exp5.l
│   ├── exp5 code.png
│   └── exp5 output.png
│
├── EXP 06) Decimal ↔ Hexadecimal Conversion/
│   ├── README.md
│   ├── decimaltohexa.l
│   ├── hexatodecimal.l
│   ├── decimal to hexa code.png
│   ├── decimal to hexa output.png
│   ├── hexa to decimal code.png
│   └── hexa to decimal output.png
│
├── EXP 07) Lines ending with “COM”/
│   ├── README.md
│   ├── exp7.l
│   ├── exp7 code.png
│   └── exp7 output.png
│
├── EXP 08) Postfix Expression Evaluation/
│   ├── README.md
│   ├── exp8.l
│   ├── exp8.y
│   ├── lex code.png
│   ├── yacc code.png
│   └── exp8 output.png
│
├── EXP 09) Desk Calculator/
│   ├── README.md
│   ├── prac9.l
│   ├── prac9.y
│   ├── exp9 lex.png
│   ├── exp9 yacc.png
│   └── exp9 output.png
│
├── EXP 10) FOR Loop Expressions/
│   ├── README.md
│   ├── exp10.l
│   ├── exp10.y
│   ├── exp10 lex.png
│   ├── exp10 yacc.png
│   └── exp10 output.png
│
├── EXP 11) ICG for Arithmetic expression/
│   ├── README.md
│   ├── exp11.l
│   ├── exp11.y
│   ├── exp11 lex.png
│   ├── exp 11 yacc.png
│   └── exp11 output.png
│
└── EXTRA - VARIABLE DECLARATION STATEMENTS/
    ├── README.md
    ├── variable.l
    ├── variable.y
    ├── variable lex code.png
    ├── variable yacc code.png
    └── variable output.png
📸 Preview

Sample Lex code

Lex code

Sample execution output

Lex output

Sample Lex + YACC output (Desk Calculator)

Desk calculator output

⚙️ Prerequisites

Install Flex, Bison and GCC on Ubuntu/Debian:

bash
sudo apt update
sudo apt install flex bison gcc

Verify the installation:

bash
flex --version
bison --version
gcc --version
▶️ Running the Experiments
🔹 Lex-only Experiments

Experiments 01, 02, 03, 05, 06 and 07 use Lex/Flex.

Example:

bash
cd "EXP 02) Count Code Tokens"
flex exp2.l
gcc lex.yy.c
./a.out
🔹 Lex + YACC — Experiments 04, 08, 09, 10, 11 and EXTRA
bash
cd "EXP 04) YACC tool"

yacc -d exp4.y
flex exp4.l
gcc y.tab.c lex.yy.c -ll
./a.out
bash
cd "EXP 08) Postfix Expression Evaluation"

yacc -d exp8.y
flex exp8.l
gcc y.tab.c lex.yy.c -ll -lm
./a.out
bash
cd "EXP 09) Desk Calculator"

yacc -d prac9.y
flex prac9.l
gcc y.tab.c lex.yy.c
./a.out
bash
cd "EXP 10) FOR Loop Expressions"

yacc -d exp10.y
flex exp10.l
gcc y.tab.c lex.yy.c
./a.out
bash
cd "EXP 11) ICG for Arithmetic expression"

yacc -d exp11.y
flex exp11.l
gcc y.tab.c lex.yy.c
./a.out
bash
cd "EXTRA - VARIABLE DECLARATION STATEMENTS"

yacc -d variable.y
flex variable.l
gcc y.tab.c lex.yy.c
./a.out

Experiment 08 links against -lm in addition to -ll because its grammar uses pow() for the ^ operator. See its README for a build/toolchain caveat around one of its rules. Experiments 09–11 and EXTRA define their own yywrap(), so no extra libraries are required.

⌨️ Input

The programs read input from standard input.

After entering the input, press:

text
Ctrl + D

to signal End of File (EOF).

Alternatively:

bash
./a.out < input.txt

can be used for file-based input.

🧠 How the Repository Is Organized

Each experiment follows a simple structure:

text
Experiment
    │
    ├── Source Code
    │      └── .l / .y
    │
    ├── Documentation
    │      └── README.md
    │
    └── Evidence
           ├── Code Screenshot
           └── Output Screenshot

This keeps the implementation, explanation and execution evidence together for every practical.

🔎 Lexical Analysis Coverage

The Lex experiments demonstrate several common lexical-analysis operations:

Concept	Demonstrated In
Regular expressions	EXP 01
Lex metadata	EXP 01
Token counting	EXP 02
Keyword recognition	EXP 02, EXP 10
Identifier recognition	EXP 02, EXP 11
Comment detection	EXP 02
Word pattern matching	EXP 03
Character conversion	EXP 05
Number conversion	EXP 06
Line pattern matching	EXP 07
🧩 Parsing Coverage

The Lex + YACC experiments cover the following parsing concepts:

Concept	Demonstrated In
Basic YACC grammar format	EXP 04
Postfix expression evaluation	EXP 08
Operator precedence and associativity	EXP 09, EXP 11
Postfix ++ / -- operators	EXP 09
Division / modulo by zero handling	EXP 09
Statement validation (for, ?:)	EXP 10
Intermediate code generation	EXP 11
Declaration statements (recursive rule)	EXTRA
🔄 Lex + YACC Workflow

Experiments 04, 08, 09, 10, 11 and EXTRA demonstrate the relationship between a lexical analyser and a parser:

text
             Input
               │
               ▼
        ┌──────────────┐
        │  Lex / Flex  │
        │ Tokenization │
        └──────┬───────┘
               │
               │ Tokens
               ▼
        ┌──────────────┐
        │  YACC /      │
        │  Bison       │
        │   Parser     │
        └──────┬───────┘
               │
               ▼
             Output

Lex/Flex identifies tokens, while YACC/Bison uses the resulting tokens according to the grammar specification.

🗂️ Generated Files

The following files are generated during compilation and are not stored in the repository:

text
lex.yy.c
y.tab.c
y.tab.h
a.out

For cleaner builds, an executable can also be given an explicit name:

bash
gcc lex.yy.c -o exp2
./exp2
📈 Learning Progress
text
LEX Fundamentals
       │
       ▼
Regular Expressions
       │
       ▼
Token Recognition
       │
       ▼
Advanced Lex Programs
       │
       ▼
YACC & Grammar
       │
       ▼
Lex + YACC Integration
       │
       ▼
Parsing & Intermediate Code
<div align="center">
🧪 Compiler Construction Lab

Lexical Analysis • Parsing • Regular Expressions • YACC • C

<br>

Ananya Marghade PRN: 24070521004 • A / A1 • 2024–28

</div>
