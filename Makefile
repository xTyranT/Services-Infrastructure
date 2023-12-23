all :
	@mkdir -p /home/kouferka/data/wordpress
	@mkdir -p /home/kouferka/data/database
	@cd srcs && docker compose up

fclean :
	@cd srcs && docker compose down
	@docker system prune --all
	@sudo rm -rf /home/kouferka/data/wordpress && sudo rm -rf /home/kouferka/data/database
	@docker volume rm $$(docker volume ls | awk '{print $$2}' | grep -v VOLUME) || echo "no volume"