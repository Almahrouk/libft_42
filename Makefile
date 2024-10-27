# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dal-mahr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/11 14:31:54 by dal-mahr          #+#    #+#              #
#    Updated: 2024/09/11 15:54:42 by dal-mahr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			=	libft.a
CC				=	cc
CFLAGS			=	-Wall -Wextra -Werror

SOURCES			=	ft_atoi.c ft_itoa.c ft_tolower.c ft_toupper.c \
					ft_bzero.c ft_calloc.c \
					ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
					ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
					ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
					ft_split.c ft_strchr.c ft_strcmp.c ft_strdup.c ft_striteri.c \
					ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c \
					ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c
							
BSOURCES = \
	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c
OBJECTS = $(SOURCES:.c=.o)
BOBJECTS = $(BSOURCES:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $@ $?

bonus: $(OBJECTS) $(BOBJECTS)
	ar rcs $(NAME) $?

%.o: %.c
	$(CC) -c $(CFLAGS) $?

clean:
	rm -f $(OBJECTS) $(BOBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re