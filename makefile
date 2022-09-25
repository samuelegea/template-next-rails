up:
	docker compose up
down:
	docker compose down
build:
	docker compose build
up_build:
	docker compose up --build

# Specific commands to backend
up_backend:
	docker compose up backend
back_bash:
	docker exec -it $$(docker ps --filter name=back -q) bash
migrate:
	docker exec -it $$(docker ps --filter name=back -q) rake db:migrate
seed:
	docker exec -it $$(docker ps --filter name=back -q) rake db:seed
console:
	docker exec -it $$(docker ps --filter name=back -q) rails c
test:
	docker exec -it $$(docker ps --filter name=back -q) rspec
rubocop:
	docker exec -it $$(docker ps --filter name=back -q) rubocop
rubocop_fix:
	docker exec -it $$(docker ps --filter name=back -q) rubocop -a
rubocop_fix_all:
	docker exec -it $$(docker ps --filter name=back -q) rubocop -A

# Specific commands to frontend
up_backend:
	docker compose up frontend
front_bash:
	docker exec -it $$(docker ps --filter name=front -q) bash
