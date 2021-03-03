#include <stdio.h>

int		ft_strlen(char *s);
int		ft_strcmp(const char *s1, const char *s2);
int	ft_strcpy(char * dst, const char * src);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
char	*ft_strdup(const char *s1);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);

int		main()
{
	// asm('ft_strlen');
	printf("%d", ft_strcpy("asm", ""));
	return 0;
}