# La cible start lance les conteneurs définis dans le fichier docker-compose.yml 
#avec l'option -d qui signifie que les conteneurs sont démarrés en arrière-plan.
start:
	docker-compose up -d

# La cible restart arrêlste tous les conteneurs Docker existants à l'aide de la 
# commande docker stop et les supprime à l'aide de la commande docker rm. Ensuite, 
# il lance à nouveau les conteneurs en appelant la cible start.
restart:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	make start

# La cible stop arrête tous les conteneurs Docker existants à l'aide de la commande 
# docker stop et les supprime à l'aide de la commande docker rm.
stop:
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)