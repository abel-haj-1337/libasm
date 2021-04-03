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

OBJS		= $(SRCS:.c=.o)

%.o : %.s
	$(NASM) $< -o $@

# $(NAME)		:
# 	nasm -f macho64 $(SRCS) -o $< $@
# 	ar rc $(NAME) $(OBJS)

all			: $(NAME)

clean		:
	rm $(OBJS)	

fclean		: clean
	rm $(NAME)

re			: fclean all
