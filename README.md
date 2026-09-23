<div align="center">

# 🧩 Compiler Construction Lab
<p>
  <strong>Compiler Construction • CSE • Academic Laboratory</strong>
</p>

<p>
  <img src="https://img.shields.io/badge/Language-C-blue?style=for-the-badge" alt="C">
  <img src="https://img.shields.io/badge/Lex%2FFlex-Lexical%20Analysis-orange?style=for-the-badge" alt="Lex/Flex">
  <img src="https://img.shields.io/badge/YACC-Parsing-purple?style=for-the-badge" alt="YACC">
  <img src="https://img.shields.io/badge/Platform-Ubuntu-green?style=for-the-badge" alt="Ubuntu">
</p>

</div>

---

### 🔬 Compiler Construction Lab

Lexical analysis → Token recognition → Parsing → Expression processing

This repository contains the laboratory work for the **Compiler Construction** course. It includes practical implementations using **Lex/Flex, YACC and C**, along with source code, execution screenshots and experiment-wise documentation.

Each experiment is organized in its own folder so that the programs, screenshots and explanations remain easy to navigate.

---

## 👩‍💻 Author


|                     |                           |
| ------------------- | ------------------------- |
| **Name**            | **Ananya Marghade**       |
| **PRN**             | **24070521004**           |
| **Section**         | **A**                     |
| **Batch**           | **A1**                    |
| **Course**          | **Compiler Construction Lab** |


---

## 🛠️ Technologies Used

|          Technology         | Purpose                                       |
| :-------------------------: | --------------------------------------------- |
|        **Lex / Flex**       | Lexical analyser design and token recognition |
|       **YACC / Bison**      | Grammar and parser construction               |
|         **C / GCC**         | Host language and compilation                 |
| **Ubuntu / Linux Terminal** | Build and execution environment               |

### Core Concepts Covered

* Lexical analysis
* Regular expressions and patterns
* Token recognition
* Keywords and identifiers
* Comments, words, lines and spaces
* Lex actions and counters
* YACC grammar specifications
* Lex + YACC integration
* Case conversion
* Number-system conversion
* Pattern matching
* Postfix expression evaluation

---

## 📸 Laboratory Preview

<div align="center">

<img src="EXP 02) Count Code Tokens/exp2 code.png" width="48%" alt="Lex code">

<img src="EXP 02) Count Code Tokens/exp2 output.png" width="48%" alt="Lex output">

<br><br>

<em>Sample Lex program and execution output from the laboratory record.</em>

</div>

---

## 📚 Experiment Index

|   No.  |  CO | Experiment                                                     | Source                               |                                    Documentation                                    |
| :----: | :-: | -------------------------------------------------------------- | ------------------------------------ | :---------------------------------------------------------------------------------: |
| **01** | CO1 | Introduction to LEX tool, metadata and patterns                | `practical1-1.l`, `practical1-2.l`   |    [📖 README](EXP%2001%29%20LEX%20tool%2C%20metadata%20and%20patterns/README.md)   |
| **02** | CO1 | Count comments, keywords, identifiers, words, lines and spaces | `exp2.l`                             |              [📖 README](EXP%2002%29%20Count%20Code%20Tokens/README.md)             |
| **03** | CO1 | Count words starting with “A”                                  | `exp3.l`                             | [📖 README](EXP%2003%29%20Words%20starting%20with%20%E2%80%9CA%E2%80%9D./README.md) |
| **04** | CO2 | Introduction to YACC tool and YACC code format                 | `exp4.l`, `exp4.y`                   |                   [📖 README](EXP%2004%29%20YACC%20tool/README.md)                  |
| **05** | CO2 | Conversion of lowercase to uppercase and vice versa            | `exp5.l`                             |           [📖 README](EXP%2005%29%20Lowercase%20to%20Uppercase/README.md)           |
| **06** | CO2 | Decimal ↔ hexadecimal conversion                               | `decimaltohexa.l`, `hexatodecimal.l` | [📖 README](EXP%2006%29%20Decimal%20%E2%86%94%20Hexadecimal%20Conversion/README.md) |
| **07** | CO3 | Test lines ending with “COM”                                   | `exp7.l`                             |  [📖 README](EXP%2007%29%20Lines%20ending%20with%20%E2%80%9CCOM%E2%80%9D/README.md) |
| **08** | CO3 | Postfix Expression Evaluation                                  | —                                    |        [📖 README](EXP%2008%29%20Postfix%20Expression%20Evaluation/README.md)       |
| **09** | CO4 | Desk calculator with error recovery                            | —                                    |                                     🔜 Not added                                    |
| **10** | CO4 | Parser for “FOR” loop statements                               | —                                    |                                     🔜 Not added                                    |

---

## ⭐ Value Added Experiment

|   No.  |  CO | Experiment                                                   |    Status    |
| :----: | :-: | ------------------------------------------------------------ | :----------: |
| **01** | CO4 | Intermediate Code Generator (ICG) for arithmetic expressions | 🔜 Not added |

---

## 📂 Repository Structure

```text
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
└── EXP 08) Postfix Expression Evaluation/
    └── README.md
```

---

## ⚙️ Prerequisites

Install **Flex, Bison and GCC** on Ubuntu/Debian:

```bash
sudo apt update
sudo apt install flex bison gcc
```

Verify the installation:

```bash
flex --version
bison --version
gcc --version
```

---

## ▶️ Running the Experiments

### 🔹 Lex-only Experiments

Experiments **01, 02, 03, 05, 06 and 07** use Lex/Flex.

Example:

```bash
cd "EXP 02) Count Code Tokens"
flex exp2.l
gcc lex.yy.c
./a.out
```

### 🔹 Lex + YACC — Experiment 04

```bash
cd "EXP 04) YACC tool"

yacc -d exp4.y
flex exp4.l
gcc y.tab.c lex.yy.c -ll
./a.out
```

### ⌨️ Input

The programs read input from **standard input**.

After entering the input, press:

```text
Ctrl + D
```

to signal **End of File (EOF)**.

Alternatively:

```bash
./a.out < input.txt
```

can be used for file-based input.

---

## 🧠 How the Repository Is Organized

Each experiment follows a simple structure:

```text
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
```

This keeps the **implementation, explanation and execution evidence** together for every practical.

---

## 🔎 Lexical Analysis Coverage

The Lex experiments demonstrate several common lexical-analysis operations:

| Concept                | Demonstrated In |
| ---------------------- | --------------- |
| Regular expressions    | EXP 01          |
| Lex metadata           | EXP 01          |
| Token counting         | EXP 02          |
| Keyword recognition    | EXP 02          |
| Identifier recognition | EXP 02          |
| Comment detection      | EXP 02          |
| Word pattern matching  | EXP 03          |
| Character conversion   | EXP 05          |
| Number conversion      | EXP 06          |
| Line pattern matching  | EXP 07          |

---

## 🔄 Lex + YACC Workflow

Experiment 04 demonstrates the relationship between a lexical analyser and a parser:

```text
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
```

Lex/Flex identifies tokens, while YACC/Bison uses the resulting tokens according to the grammar specification.

---

## 🗂️ Generated Files

The following files are generated during compilation and are **not stored in the repository**:

```text
lex.yy.c
y.tab.c
y.tab.h
a.out
```

For cleaner builds, an executable can also be given an explicit name:

```bash
gcc lex.yy.c -o exp2
./exp2
```

---

## ⚠️ Repository Notes

* Folder names contain spaces and special characters, so they should be enclosed in quotes when using `cd`.
* Experiments **01 and 06** contain multiple programs. Build them one at a time because each Flex program generates `lex.yy.c`.
* Experiment **04** combines Lex and YACC.
* Experiments **09 and 10** are part of the course list but have not yet been added to the repository.
* Experiment **08** currently contains documentation but no source implementation.
* Screenshots represent actual laboratory execution sessions.
* Where the screenshot version differs from the committed source, the corresponding experiment README documents the difference.

---

## 📈 Learning Progress

```text
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
```

---

<div align="center">

### 🧪 Compiler Construction Lab

**Lexical Analysis • Parsing • Regular Expressions • YACC • C**

<br>

**Ananya Marghade**
PRN: 24070521004 • A / A1 • 2024–28

</div>
