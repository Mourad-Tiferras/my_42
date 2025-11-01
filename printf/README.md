# 🖨️ FT_Printf

## 📖 About

This project is pretty straightforward — you will **recode the `printf` function** from the C standard library.  
The goal is to build a **custom implementation** that behaves like the original `printf` and can be reused in future projects without triggering cheating flags.  

Through this project, you’ll learn how to handle **variadic functions** and deepen your understanding of **C’s formatted output system**.

---

## 🚀 TL;DR

This project consists of creating a **library** that contains a simplified version of the `printf` function.

You will implement your own version:

```c

int ft_printf(const char *format, ...);
```


##  Mandatory Part

Your **ft_printf** must support the following **format specifiers**:

| Specifier | Description |
|------------|-------------|
| **%c** | Print a single character |
| **%s** | Print a string |
| **%p** | Print a pointer address in hexadecimal |
| **%d** | Print a signed decimal integer |
| **%i** | Print a signed integer (same as `%d`) |
| **%u** | Print an unsigned decimal integer |
| **%x** | Print an unsigned hexadecimal number (lowercase) |
| **%X** | Print an unsigned hexadecimal number (uppercase) |
| **%%** | Print a literal `%` character |

---

## 🧠 Learning Objectives

- Understand and use **variadic functions** (`<stdarg.h>`)
- Manage **formatted output** with type conversions
- Improve **string and number manipulation** skills
- Reinforce **memory and buffer management**

---

