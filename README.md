# 🧠 Mini Compiler using Flex and Yacc

## 📌 Project Title

**Design and Implementation of a Mini Compiler for Arithmetic Expressions and Control Statements Using Flex and Yacc**

---

## 📖 Overview

This project demonstrates the construction of a **Mini Compiler** that can:

- Parse and evaluate arithmetic expressions
- Process control structures such as `if`, `else`, `while`, and `for`
- Execute print statements
- Show intermediate outputs

The compiler is built using **Lex (Flex)** for lexical analysis and **Yacc (Bison)** for syntax parsing and evaluation.

---

## 🚀 Features

- ✅ Lexical analysis for identifiers, numbers, keywords, and operators
- ✅ Syntax validation using context-free grammar
- ✅ Arithmetic expression evaluation
- ✅ Support for:
  - `if-else` statements
  - `for` loops
  - `while` loops
  - `print()` for output
- ✅ Intermediate output after evaluation
- ✅ Input is read from a separate file: `input.c`

---

## 📂 Project Structure

| File        | Description                              |
| ----------- | ---------------------------------------- |
| `calc.l`    | Lex (Flex) source file for tokenizing    |
| `calc.y`    | Yacc source file for grammar and logic   |
| `input.c`   | Input source file with code to interpret |
| `compiler`  | Output binary (after compilation)        |
| `README.md` | This documentation file                  |

---

## 🧪 Sample Input (`input.c`)

````c
print(5 + 3);
if (10 > 5) {
  print(1);
}
for (i = 0; i < 3; i = i + 1) {
  print(i);
}
while (2 < 4) {
  print(2);
  break;
}

## 📤 Sample Output

```plaintext
Print: 8
Print: 1
Print: 0
Print: 1
Print: 2
Print: 2
````

---

## 🛠️ Tools & Technologies

- **C** – Core programming language
- **Flex (Lex)** – Lexical Analyzer Generator
- **Yacc (Bison)** – Parser Generator
- **GCC** – C Compiler
- **Unix/Linux/macOS Terminal** – Development Environment

---

## 🧰 Compilation & Execution

Ensure you have `flex`, `bison`, and `gcc` installed. Then, follow these steps in your terminal:

```bash
yacc -d calc.y         # Generates y.tab.c and y.tab.h
lex calc.l             # Generates lex.yy.c
gcc y.tab.c lex.yy.c -o compiler -ll   # Compile the compiler
./compiler             # Run the compiler (reads from input.c)
```

📁 **Note:** Ensure the `input.c` file is in the same directory before running the compiler.

---

## ✍️ Author

- **Name:** MD. Rishad Nur
- **University:** Begum Rokeya University, Rangpur
- **Level-Term:** 4th year, 1st semester
- **Email:** rishad.nur007@gmail.com
