#!/bin/sh
# Restart the idrepo deployment
## Usage: ./restart.sh [kubeconfig]

if [ $# -ge 1 ] ; then
  export KUBECONFIG=$1
fi

NS=idrepo
kubectl -n $NS rollout restart deploy
