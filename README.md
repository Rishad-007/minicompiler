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

| File         | Description                              |
|--------------|------------------------------------------|
| `calc.l`     | Lex (Flex) source file for tokenizing    |
| `calc.y`     | Yacc source file for grammar and logic   |
| `input.c`    | Input source file with code to interpret |
| `compiler`   | Output binary (after compilation)        |
| `README.md`  | This documentation file                  |

---

## 🧪 Sample Input (`input.c`)

```c
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
