#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# on .. pdata 10.4.1.224 pmdsdata3 ssh

cd /srv/dkr

git clone https://github.com/dgleba/brail347a22.git



#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# run it in docker..

chmod +x docker/prep.sh
docker/prep.sh

mkdir -p deployed/pids deployed/sockets deployed/log


_____________


docker-compose build

_____________

docker-compose run app rails r passw.rb
	albe@pmdsdata4:/srv/dkr/brail347a22$  docker-compose run app rails r passw.rb
	Starting brail347a22_db_1 ... done
	 Please specify a valid ruby command or the path of a script to run.
	Run 'bin/rails runner -h' for help.
	undefined local variable or method `passw' for main:Object

rails r passw.rb -e production

_____________
 
docker-compose up


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

https://www.reddit.com/r/docker/comments/7zjbe4/docker_rails_puma_nginx_postgres/


level 2 satendra02nov
1 point ·6 months ago

I have removed the db:setup from DockerFile for rails app as you suggested. Now this can be handled manually.

docker-compose run app rake db:create
docker-compose run app rake db:migrate
docker-compose run app rake db:seed


#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

