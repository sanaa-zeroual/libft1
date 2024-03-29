# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: szeroual <szeroual@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/18 12:22:39 by szeroual          #+#    #+#              #
#    Updated: 2023/12/04 14:03:41 by szeroual         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc

CFLAGS = -Wall -Wextra -Werror

AR = ar rcs

SRC = ft_isdigit.c ft_substr.c ft_strdup.c ft_strlen.c ft_memcpy.c ft_strjoin.c ft_atoi.c ft_bzero.c ft_isalpha.c ft_calloc.c ft_itoa.c ft_isascii.c ft_isprint.c ft_memset.c ft_strlcpy.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c ft_memchr.c ft_memcmp.c ft_isalnum.c ft_strchr.c ft_strlcat.c ft_memmove.c ft_memcpy.c ft_putchar_fd.c ft_putstr_fd.c ft_striteri.c ft_putendl_fd.c ft_putnbr_fd.c ft_strmapi.c ft_strtrim.c ft_itoa.c ft_memmove.c ft_split.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $@ $(OBJ)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re