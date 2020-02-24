# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fjankows <fjankows@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/18 18:31:57 by fjankows          #+#    #+#              #
#    Updated: 2020/02/24 13:29:04 by fjankows         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Werror -Wextra

SOURCES = ./libft.h
INC = -I.
CFILES = part1/*.c part2/*.c part3/*.c

NAME = libft.a

$(NAME):
	$(CC) $(CFLAGS) $(INC) -c $(CFILES)
	ar rcs $(NAME) *.o
	ranlib $(NAME)

.PHONY: all clean fclean re

all: $(NAME)

clean:
	rm -f *.o

fclean:
	rm -f $(NAME)

re: fclean all
