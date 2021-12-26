# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mhaddaou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/08 02:07:05 by mhaddaou          #+#    #+#              #
#    Updated: 2021/12/09 04:46:00 by mhaddaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRC = ft_printf.c ft_hex_print.c ft_int_putstr.c ft_nbr.c ft_int_putchar.c ft_uprint.c ft_printpercent.c ft_x_X_print.c ft_putchar_fd.c ft_putnbr_fd.c

OBJ = $(SRC:.c=.o)

CC = gcc

NAME = libftprintf.a

CFLAGS = -Wall -Wextra -Werror

HEADER = ft_printf.h

all : $(NAME)

%.o : %.c
	@$(CC) $(CFLAGS) -c $<

$(NAME) : $(OBJ) $(HEADER)
	@ar -rc $(NAME) $(OBJ)

clean :
	@rm -f $(OBJ) $(OBJB)

fclean : clean
	@rm -f $(NAME)

re : fclean all
