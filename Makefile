all :
	@sudo mkdir -p /home/kouferka/data/wordpress
	@sudo mkdir -p /home/kouferka/data/database
	@cd srcs && docker compose up --build

fclean :
	@cd srcs && docker compose down
	@docker system prune --volumes -af
	@sudo rm -rf /home/kouferka/data/wordpress && sudo rm -rf /home/kouferka/data/database
	@docker volume rm $$(docker volume ls | awk '{print $$2}' | grep -v VOLUME) || echo "no volume"