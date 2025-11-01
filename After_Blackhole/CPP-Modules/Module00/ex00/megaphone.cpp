#include <iostream>

void    to_upper(char c)
{
    c = c - 32;
    std::cout << c;
}

void _putchar(char c)
{
    std::cout << c;   
}

int     main(int argc, char *argv[])
{
    int     row_idx = 1;
    int     c_idx = 0;

    if (argc == 1)
    {
        std::cout << "* LOUD AND UNBEARABLE FEEDBACK NOISE *\n";
    }
    else {
        while (row_idx <= (argc - 1))
        {
            c_idx = 0;
            while (argv[row_idx][c_idx] != '\0')
            {
                if (argv[row_idx][c_idx] >= 'a' && argv[row_idx][c_idx] <= 'z')
                {
                    to_upper(argv[row_idx][c_idx]);
                }
                else
                {
                    _putchar(argv[row_idx][c_idx]);
                }
                c_idx++;
            }
            row_idx++;
        }
    }
    return (0);
}