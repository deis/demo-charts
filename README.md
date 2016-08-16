# [Helm Classic](http://helm.sh) charts repository for demos

##You need to add this Chart repo to Helm Classic:
```console
$ helmc up
$ helmc repo add demo-charts https://github.com/deis/demo-charts
$ helmc up
```

##Then you can install charts:

Let's install redis-guestbook chart:
```
$ helmc fetch demo-charts/redis-guestbook
$ helmc install redis-guestbook
```
