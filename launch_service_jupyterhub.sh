docker service create \
  --mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
  --mount type=bind,src=/etc/jupyterhub,dst=/srv/jupyterhub \
  --name jupyterhubserver \
  --network jupyterhub \
  --constraint 'node.role == manager' \
  --detach=true \
  jhenck57/arc_gis:jupyterhub-docker
 #--mount src=nfsvolume,dst=/var/nfs \
