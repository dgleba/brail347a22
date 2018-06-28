#!/usr/bin/env bash
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function Purpose() {
# begin block comment =============================
: <<'END'

#  Purpose:  deploy the app to production


Read and edit these files. they may need editing.
  edit prjname dpath and vport..
    ..
  
  
Note: This is specfic to my server setup..  see: https://github.com/dgleba/vamp206a  
  
  
usage:   


( the rails project folder )  example: run this from /srv/web/rail263 


*******   Don't run with sudo..  *******


 cd /srv/web/railci350
 deploy/deploy.sh

end -- usage. 


END
# end block comment ===============================
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#cd ;
date ; set +vx  ; set -vx ; # echo off, then echo on
#


# settings...

prjname="brail347a22"
dpath="\/var\/www\/$prjname"
dkpath='docker/web'

sed  -e "s/&RAILS_ROOT/${dpath}/g" $dkpath/nginx.conf.in > $dkpath/nginx.conf2 
sed  -e "s/APP___NAME/${prjname}/g" $dkpath/nginx.conf2 > $dkpath/nginx.conf 

echo $prjname
echo $dpath

