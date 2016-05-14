#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    unsigned long long n = 600851475143;
    unsigned long long div = 2;
    unsigned long long largest = 1;
    while( n > 1 )
    {
        if( n % div == 0 )
        {
            n = n / div;
            largest = div;
            continue;
        }
        div++;
    }
    cout << largest << endl;
    return 0;
}

