# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-sal <mben-sal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/24 18:14:58 by mben-sal          #+#    #+#              #
#    Updated: 2024/05/11 11:27:56 by mben-sal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bold = $(shell tput bold)

all: credit up

credit:
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━┃INCEPTION ┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
	@echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

build:
	@docker compose -f ./srcs/docker-compose.yml build

up:
	@docker compose -f ./srcs/docker-compose.yml up --build || echo "$(bold)Error: Docker compose up failed."

stop:
	@docker compose -f ./srcs/docker-compose.yml stop

start:
	@docker compose -f ./srcs/docker-compose.yml start

down:
	@docker compose -f ./srcs/docker-compose.yml down

clean: down
	@docker image rm -f nginx:latest || true
	@docker image rm -f wordpress:latest || true
	@docker image rm -f mariadb:latest || true
	@docker image rm -f adminer:latest || true
	@docker volume rm srcs_vl_mariadb || true
	@docker volume rm srcs_vl_wp || true

fclean: clean
	@sudo rm -rf /home/mben-sal/data/*
	# @docker volume rm srcs_vl_mariadb srcs_vl_wp
	@sudo rm -f /home/mben-sal/data/index.nginx-debian.html

re: fclean all