# 42 School Project: get_next_line

## Project Overview

> The **get_next_line** project is a fundamental exercise in file I/O and static memory handling in C.
> It aims to implement a function that reads a line from a file descriptor — returning one line at a time, no matter the buffer size or file length.

---

## 📚 Objective

Your goal is to **code a function that reads from a file descriptor and returns a line ending with `\n` (newline)**, or the last line of the file if it doesn’t end with `\n`.

It must:

* Work with **any valid file descriptor**.
* Handle **any BUFFER_SIZE** value defined during compilation.
* Manage **memory efficiently**, without leaks.
* Be able to **read from multiple FDs** at the same time (bonus part).

---

## ⚙️ Mandatory Function

### Function Prototype

```c
char *get_next_line(int fd);
```

### Allowed Functions

```c
read(), malloc(), free()
```

### Description

* Reads a line from a file descriptor, including the newline character `\n`.
* Returns `NULL` when there’s nothing more to read or an error occurs.
* The function should keep memory between calls using a **static variable**.

---

## 🔁 How It Works

1. Read `BUFFER_SIZE` bytes from the file descriptor.
2. Store the data in a **static buffer** to keep track of leftover text.
3. Extract a line from the buffer.
4. Return the line and keep the remaining data for the next call.

---

## 🧩 Example Usage

```c
#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>

int main(void)
{
	int fd = open("test.txt", O_RDONLY);
	char *line;

	while ((line = get_next_line(fd)) != NULL)
	{
		printf("%s", line);
		free(line);
	}
	close(fd);
	return (0);
}
```

---

## 🧪 Compilation

```bash
cc -Wall -Wextra -Werror -D BUFFER_SIZE=42 get_next_line.c get_next_line_utils.c main.c -o gnl
./gnl
```

## 📁 Files

| File                    | Description                                            |
| ----------------------- | ------------------------------------------------------ |
| `get_next_line.c`       | Main logic of the function                             |
| `get_next_line_utils.c` | Helper functions (string ops, memory management, etc.) |
| `get_next_line.h`       | Header file with prototypes and includes               |
| `main.c`                | Example test file                                      |

---

## 🧠 Key Concepts

* **Static variables** in C
* **File descriptors**
* **Memory management**
* **Buffering and string manipulation**

---

## ✅ Evaluation Checklist

* [x] Returns the correct line (with `\n`)
* [x] Works with varying BUFFER_SIZE values
* [x] Handles multiple file descriptors (bonus)
* [x] No memory leaks or invalid reads/writes
* [x] Follows the Norm (Norminette)

---

## 🏁 Final Thoughts

This project teaches you how to handle **I/O streams**, **persistent memory**, and **string manipulation** efficiently — crucial foundations for later projects like **pipex**, **minishell**, and **libft** extensions.

---

> *“Reading one line at a time teaches you patience, persistence, and precision.”*

---

