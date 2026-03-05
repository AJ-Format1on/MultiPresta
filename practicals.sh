for i in $(seq 1 10); do
  PORT=$((8080+i))
  ADIR=$(docker exec -it shop-$i bash -lc "cd /var/www/html && ls -d admin[0-9a-z]*/ 2>/dev/null | head -n1" | tr -d '\r')
  echo "shop_$i: http://DOMAIN_HERE:${PORT}/${ADIR}"
done