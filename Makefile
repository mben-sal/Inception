# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-sal <mben-sal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/24 18:14:58 by mben-sal          #+#    #+#              #
#    Updated: 2024/05/06 18:19:27 by mben-sal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


bold = $(shell tput bold)

all: credit up

credit:
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━┃INCEPTION ┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

build:
	@docker-compose -f ./srcs/docker-compose.yml build

up:
	@docker-compose -f ./srcs/docker-compose.yml up --build

stop:
	@docker-compose -f ./srcs/docker-compose.yml stop

start:
	@docker-compose -f ./srcs/docker-compose.yml start

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@docker image rmi -f nginx wordpress mariadb adminer

fclean: clean
	@rm -rf /Users/mben-sal/data/*
	@docker volume rm srcs_vl_mariadb srcs_vl_wp

re: fclean all