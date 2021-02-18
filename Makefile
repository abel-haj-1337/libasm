# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abel-haj <abel-haj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/09 17:55:20 by abel-haj          #+#    #+#              #
#    Updated: 2021/02/18 13:00:46 by abel-haj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

SRCS		= 

$(NAME)		:

test		:
	nasm -f macho64 try.s -t && \
	ld try.o -lSystem

all			: $(NAME)


clean		:
	

fclean		: clean
	rm $(NAME)

re			: fclean all
