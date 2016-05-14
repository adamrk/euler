#include <iostream>

using namespace std;

// determines if 6 digit number is palindrome
bool palindrome(int x)
{
    int digits[6];
    for(int i = 0; i < 6; i++)
    {
        digits[i] = x % 10;
        x = (x - digits[i]) / 10;
    }
    if(digits[0] == digits[5] && digits[1] == digits[4] && digits[2] == digits[3])
        return true;
    return false;
}

int main()
{
    int largest = 0;
    for(int i = 1; i < 1000; i++)
    {
        for(int j = i; j < 1000; j++)
        {
            if(largest < i * j && palindrome(i * j))
            {
                largest = i * j;
            }
        }
    }
    cout << largest << endl;
}
