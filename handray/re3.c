#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[])
{
      int a=0;
	int b=0; 
	if(argc!=2)
	{	
		exit(0);
	}

	for(b=1; b<=9; b++)
		for(a=1; a<=9; a++)
			printf("%d\n", b*a);
				
	return 0;
}
