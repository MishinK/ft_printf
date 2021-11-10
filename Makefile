# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ashea <ashea@student.21-school.ru>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/14 16:15:10 by ashea             #+#    #+#              #
#    Updated: 2020/05/14 16:17:07 by ashea            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS = ft_print_with_indent.c ft_print_char.c ft_print_percent.c ft_print_string.c ft_print_integer.c ft_print_unsignedint.c ft_print_address.c ft_printf.c ft_printf_utilities.c ft_atoi_i.c ft_itoa_base.c

INCLUDE = ft_printf.h

OBJ = $(SRCS:.c=.o)

FLAGS = -Wall -Werror -Wextra -I $(INCLUDE)

COMPILE = gcc $(FLAGS) -c 

LIB = ar rc $(NAME)

RANLIB = ranlib $(NAME)

REMOVE = rm -f

all: $(NAME)

$(NAME):$(OBJ)
	$(LIB) $^
	$(RANLIB)

%.o: %.c $(INCLUDE)
	 $(COMPILE) $<

clean:
	$(REMOVE) $(OBJ)

fclean: clean
	$(REMOVE) $(NAME)

re: fclean all

.PHONY: all clean fclean re