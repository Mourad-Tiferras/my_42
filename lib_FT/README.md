# 42 school Lib_FT

## Lib_FT is a C static library for building consists of coding basic C functions (see below), which are then compiled into a library for use in other projects of the cursus.

## Functions Overview

### Functions from `<ctype.h>` Library
- [**ft_isascii**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_isascii.c) — test for ASCII character  
- [**ft_isalnum**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_isalnum.c) — alphanumeric character test  
- [**ft_isalpha**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_isalpha.c) — alphabetic character test  
- [**ft_isdigit**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_isdigit.c) — decimal-digit character test  
- [**ft_isprint**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_isprint.c) — printing character test (space character inclusive)  
- [**ft_tolower**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_tolower.c) — upper case to lower case letter conversion  
- [**ft_toupper**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_toupper.c) — lower case to upper case letter conversion  

### Functions from `<stdlib.h>` Library
- [**ft_atoi**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_atoi.c) — convert ASCII string to integer  
- [**ft_calloc**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_calloc.c) — memory allocation  

### Functions from `<strings.h>` Library
- [**ft_bzero**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_bzero.c) — write zeroes to a byte string  
- [**ft_memset**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memset.c) — write a byte to a byte string  
- [**ft_memchr**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memchr.c) — locate byte in byte string  
- [**ft_memcmp**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memcmp.c) — compare byte string  
- [**ft_memmove**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memmove.c) — copy byte string  
- [**ft_memcpy**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memcpy.c) — copy memory area  
- [**ft_memccpy**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_memccpy.c) — copy string until character found  

### Functions from `<string.h>` Library
- [**ft_strlen**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strlen.c) — find length of string  
- [**ft_strchr**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strchr.c) — locate character in string (first occurrence)  
- [**ft_strrchr**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strrchr.c) — locate character in string (last occurrence)  
- [**ft_strnstr**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strnstr.c) — locate a substring in a string (size-bounded)  
- [**ft_strncmp**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strncmp.c) — compare strings (size-bounded)  
- [**ft_strnrcmp**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strnrcmp.c) — reversely compare strings (size-bounded)  
- [**ft_strdup**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strdup.c) — save a copy of a string (with `malloc`)  
- [**ft_strlcpy**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strlcpy.c) — size-bounded string copying  
- [**ft_strlcat**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strlcat.c) — size-bounded string concatenation  

### Non-standard Functions
- [**ft_putchar_fd**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_putchar_fd.c) — output a character to given file  
- [**ft_putstr_fd**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_putstr_fd.c) — output string to given file  
- [**ft_putendl_fd**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_putendl_fd.c) — output string to given file with newline  
- [**ft_putnbr_fd**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_putnbr_fd.c) — output integer to given file  
- [**ft_itoa**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_itoa.c) — convert integer to ASCII string  
- [**ft_substr**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_substr.c) — extract substring from string  
- [**ft_strtrim**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strtrim.c) — trim beginning and end of string with the specified characters  
- [**ft_strjoin**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strjoin.c) — concatenate two strings into a new string (with `malloc`)  
- [**ft_split**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_split.c) — split string, with specified character as delimiter, into an array of strings  
- [**ft_strmapi**](https://github.com/Mourad-Tiferras/my_42/blob/main/lib_FT/ft_strmapi.c) — create new string from modifying string with specified function  
