# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abel-haj <abel-haj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/09 17:55:20 by abel-haj          #+#    #+#              #
#    Updated: 2021/04/03 18:43:29 by abel-haj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

SRCS		= ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

OBJS		= $(SRCS:.s=.o)

%.o: %.s
	nasm -f macho64 -o $@ $<

$(NAME)		: $(SRCS) $(OBJS)
	ar rc $(NAME) $(OBJS)

all			: $(NAME)

clean		:
	rm -rf $(OBJS) a.out a.out.dSYM

fclean		: clean
	rm -f $(NAME)

re			: fclean all
