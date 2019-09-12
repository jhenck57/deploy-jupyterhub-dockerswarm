docker service create \
  --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
  --mount type=bind,src=/hosthome/administrator/Documents/docker/templates/docker-jupyterhub-nginx/deploy-jupyterhub-dockerswarm,dst=/srv/jupyterhub \
  --name jupyterhubserver.local \
  --network jupyterhub \
  --constraint 'node.role == manager' \
  --detach=true \
  jhenck57/arc_gis:jupyterhub-docker
 #--mount src=nfsvolume,dst=/var/nfs \
