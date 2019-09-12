docker service create \
  --name nginx \
  --constraint 'node.role == manager' \
  --publish 80:80 \
  --detach=true \
  --network jupyterhub \
  --mount type=bind,src=/hosthome/administrator/Documents/docker/templates/docker-jupyterhub-nginx/deploy-jupyterhub-dockerswarm/nginx.conf,dst=/etc/nginx/conf.d/default.conf \
  nginx


#hosthome/administrator/Documents/docker/templates/docker-jupyterhub-nginx/deploy-jupyterhub-dockerswarm

#/etc/nginx/nginx.conf
