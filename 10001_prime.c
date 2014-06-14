// 10,001st prime - projecteuler.net/problem=7

#include <stdio.h>
#include <cs50.h>


int checkPrime(int prime_number, int prime);
bool isPrime(int number, int check_num);

int main(void)
{

    printf("The number is %d", checkPrime(10001, 2));
    return 0;

}


int checkPrime(int prime_number, int prime)
{
    if (prime_number == 0)
    {
        return prime - 1;
    }
    
    else if (isPrime(prime, prime -1))
    {
        return checkPrime(prime_number - 1, prime + 1);
    }
    
    else
    {
        return checkPrime(prime_number, prime + 1);
    } 
}

bool isPrime(int number, int check_num)
{
    if (check_num == 1)
    {
        return true;
    }
    
    else if (number % (check_num) == 0)
    {
        return false;
    }

    else
    {
        return isPrime(number, check_num - 1);
    }
}

