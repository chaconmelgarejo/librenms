#! /bin/bash
docker exec librenms_nms_1 sh -c "cd /opt/librenms; php /opt/librenms/build-base.php"
docker exec librenms_nms_1 php /opt/librenms/adduser.php admin admin 10 admin@midominio.org
docker exec -it librenms_nms_1 /opt/librenms/snmp-scan.php -r 192.168.0.0/16
