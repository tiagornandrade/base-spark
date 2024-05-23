up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker-compose restart

up-service:
	docker cp hello-pyspark.py spark-submit:/main.py

log-master: 
	docker logs base-spark-spark-master-1

exec-spark-job:
	docker exec -it spark-submit spark-submit --master spark://spark-master:7077 /opt/spark-apps/main.py
