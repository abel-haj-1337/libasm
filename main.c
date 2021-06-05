#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int		ft_strlen(char *s);
// char	*ft_strcmp(const char *s1, const char *s2);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char * dst, const char * src);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
char	*ft_strdup(const char *s1);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);

// TODO
	// code strdup using malloc
	// code read
	// code write
	// errno


int		main()
{
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

	// printf("%03d\n", strcmp("z", ""));
	// printf("%03d\n", ft_strcmp("z", ""));
	// printf("|%s|\n", ft_strcmp("string", "strin"));

	char *b = ft_strdup("character");
	char *c = "string";
	b[8] = '1';
	printf("|%s|\n", b);
	// write(1, &b[0], 1);
	return 0;
}