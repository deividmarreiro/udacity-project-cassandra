run:
	docker-compose up --build -d

stop:
	docker-compose down -v

drop:
	docker rmi udacity-project-cassandra-jupyter && docker rmi cassandra:latest