# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fjankows <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/18 18:31:57 by fjankows          #+#    #+#              #
#    Updated: 2020/02/19 15:15:34 by fjankows         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Werror -Wextra

SOURCES = ./libft.h
CFILES = *.c

NAME = libft.a

$(NAME):
	$(CC) $(CFLAGS) -c $(CFILES)
	ar rcs $(NAME) *.o
	ranlib $(NAME)

.PHONY: all clean fclean re

all: clean fclean $(NAME)

clean:
	rm -f *.o

fclean:
	rm -f $(NAME)

re: fclean all
