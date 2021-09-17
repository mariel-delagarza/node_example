migrate:
	docker-compose run --rm node-backend yarn prisma migrate dev

reset:
	docker-compose run --rm node-backend yarn prisma migrate reset --force
