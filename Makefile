all :
	@cd srcs && docker compose up

clean :
	@cd srcs && docker compose down

fclean : clean
	@docker system prune --all
	@sudo rm -rf /home/kouferka/data/wordpress/* && sudo rm -rf /home/kouferka/data/database/*
	@docker volume rm $$(docker volume ls | awk '{print $$2}' | grep -v VOLUME) || echo "no volume"