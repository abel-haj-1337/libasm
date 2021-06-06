#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include "libasm.h"

// TODO
	// code strdup using malloc
	// code read
	// code write
	// errno


int		main()
{
  printf("---------\n");
	// char *s = malloc(ft_strlen("stratosphere") + 1);

	// s[0] = 's'; s[1] = 't'; s[3] = '\0';

	// char *a = ft_strcpy(s, "stratosphere");

	// write(1, &a[0], 1);
	// write(1, &a[1], 1);
	// write(1, &a[2], 1);
	// write(1, &a[3], 1);

	// a[0] = '1';
	// printf("|%d|", ft_strcpy(s, "str"));

//  	printf("|%s|", a);
//    fflush( stdout );

	// printf("%d", ft_strlen(ft_strcpy(s, "")));

	// printf("%03d\n", strcmp("�", "a"));
	// printf("%03d\n", ft_strcmp("�", "a"));
	// printf("|%03d|\n", ft_strcmp("string", "strin"));

	// char *b = ft_strdup("character");
	// char *c = "string";
	// b[8] = '1';
	// printf("|%s|\n", b);

	// write(1, &b[0], 1);

  // printf("%s", strerror(ft_strdup("str")));
  printf("%s", ft_strdup("str"));
	return 0;
}