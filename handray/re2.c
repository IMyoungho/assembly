#include <stdio.h>

int foo(int a, int b, int c)
{
	return a+b+c;
}
int main(int argc, char*argv[])
{
	char v420[1056];
	foo(1,2,0xa);
	printf("%d\n",foo(5,1,2));
	return 0;
}
