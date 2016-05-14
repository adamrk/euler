#include <iostream>
using namespace std;

int main()
{
    int numbers[1000];
    int index = 0;
    for( int i = 1; i < 1000; i++)
    {
        if( (i % 3 == 0) || (i % 5 == 0) )
        {
            numbers[index] = i;
            index++;
        }
    }

    int sum = 0;
    for(int i = 0; i < index; i++)
    {
        sum += numbers[i];
    }
    cout << sum << endl;
	return 0;
}
