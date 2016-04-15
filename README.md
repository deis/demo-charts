# Helm charts repository for demos

#####You need to add this Chart repo to Helm:
```console
$ helm up
$ helm repo add demo-charts https://github.com/deis/demo-charts
$ helm up
```

#####Then you can install charts:

Let's install redis-guestbook chart:
```
$ helm fetch demo-charts/redis-guestbook
$ helm install redis-guestbook
```
