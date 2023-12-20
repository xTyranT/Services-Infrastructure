all :
	@cd srcs && docker compose up

clean :
	@cd srcs && docker compose down

fclean : clean
	@docker system prune --all
	@docker volume rm $$(docker volume ls | awk '{print $$2}' | grep -v VOLUME)