#include <iostream>

using namespace std;

int main()
{
    int fibnumbers[1000000];
    int index = 2;
    fibnumbers[0] = 1;
    fibnumbers[1] = 2;
    for( index = 2; fibnumbers[index - 1] + fibnumbers[index - 2] < 4000000; index++ )
    {
        fibnumbers[index] = fibnumbers[index - 1] + fibnumbers[index - 2];
    }

    int sum = 0;
    for( int i = 0; i < index; i++)
    {
        if( fibnumbers[i] % 2 == 0)
            sum += fibnumbers[i];
    }
    cout << sum << endl;
    return 0;
}
