# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mben-sal <mben-sal@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/24 18:14:58 by mben-sal          #+#    #+#              #
#    Updated: 2024/04/24 20:03:57 by mben-sal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# COMPOSE_FILE := "./srcs/docker-compose.yml"
# WORDPRESS_DATA_DIR := /home/mben-sal/data/wordpress
# MARIA_DB_DATA_DIR := /home/mben-sal/data/mariadb

# # Define targets
# .PHONY: up down logs clean build

# up: build
# 	docker-compose -f $(COMPOSE_FILE) up -d 

# down:
# 	docker-compose -f $(COMPOSE_FILE) down

# logs:
# 	docker-compose -f $(COMPOSE_FILE) logs -f

# clean:
# 	docker-compose -f $(COMPOSE_FILE) down --volumes --remove-orphans
# 	rm -rf $(WORDPRESS_DATA_DIR)/*
# 	rm -rf $(MARIA_DB_DATA_DIR)/*

# build: create_dirs
# 	docker-compose -f $(COMPOSE_FILE) build

# create_dirs:
# 	mkdir -p $(WORDPRESS_DATA_DIR)
# 	mkdir -p $(MARIA_DB_DATA_DIR)

# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msaouab <msaouab@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 13:58:51 by msaouab           #+#    #+#              #
#    Updated: 2022/11/12 12:22:27 by msaouab          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bold = $(shell tput bold)

# RED = \033[1;31m
# GREEN = \033[1;32m
# YELLOW = \033[1;33m
# BLUE = \033[1;34m
# ED = \033[0m

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
	@docker image rmi -f nginx wordpress mariadb adminer ftp redis website cadvisor

fclean: clean
	@rm -rf /home/mben-sal/data/wordpress
	@docker volume rm srcs_vl_mariadb srcs_vl_wp

re: fclean all