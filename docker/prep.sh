#!/usr/bin/env bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function Purpose() {
# begin block comment =============================
: <<'END'

#  Purpose:  create nginx.conf

  
usage:   


( from the rails project folder )  example: run this from /srv/web/rail263 


*******   Don't run with sudo..  *******


 cd /srv/web/railci350
 docker/prep.sh

end -- usage. 


END
# end block comment ===============================
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#cd ;
date ; set +vx  ; set -vx ; # echo off, then echo on
#


# settings...

prjname="x"
prjname="${PWD##*/}"

# no.. drawpath="${PWD}"
drawpath="/var/www/$prjname"
dpath=$(echo "${drawpath}"|sed 's=/=\\/=g')
dkpath='docker'
# dkappath='docker/app'

sed  -e "s/&RAILS_ROOT/${dpath}/g" $dkpath/nginx.conf.in > /tmp/nginx.conf2 
sed  -e "s/APP___NAME/${prjname}/g" /tmp/nginx.conf2 > $dkpath/nginx.conf 


sed  -e "s/APP___FOLDER/${dpath}/g" $dkpath/web.Dockerfile.in > $dkpath/web.Dockerfile

sed  -e "s/APP___FOLDER/${dpath}/g" $dkpath/app.Dockerfile.in > $dkpath/app.Dockerfile




echo $prjname
echo $drawpath
echo $dpath

