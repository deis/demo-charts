# Jenkins

> Jenkins is widely recognized as the most feature-rich CI available with easy configuration, continuous delivery and continuous integration support, easily test, build and stage your app, and more. It supports multiple SCM tools including CVS, Subversion and Git. It can execute Apache Ant and Apache Maven-based projects as well as arbitrary scripts.

Based on the [Bitnami Jenkins](https://github.com/bitnami/bitnami-docker-jenkins) image for docker, and [Bitnami Jenkins](https://github.com/bitnami/charts/tree/master/jenkins) chart, this Chart bootstraps a [Jenkins](https://jenkins.io) deployment on a [Kubernetes](https://kubernetes.io) cluster using [Helm](https://helm.sh).

## Google Cloud Container Engine support

This Jenkins chart is made to work with GKE only.
You can update it to your requirements and different provider.

### Fetch chart

To fetch the chart to your local `helmc` workspace, run:

```bash
$ helmc fetch demo-charts/jenkins-gke
```

### Configuration

To edit the default Jenkins configuration, run:

```bash
$ helmc edit jenkins-gke
```

### Jenkins admin username and password

You can update the Jenkins admin username and password in `tpl/values.toml`. When not specified, the default values are used.

Refer to the [Environment variables](https://github.com/bitnami/bitnami-docker-jenkins/#environment-variables) section of the [Bitnami Jenkins](https://github.com/bitnami/bitnami-docker-jenkins) image for the default values.

The values of `jenkinsUser` and `jenkinsPassword` are the login credentials when you [access the Jenkins instance](#access-your-jenkins-application).

### Persistence

For persistence of the Jenkins data and configuration, GCP Persistent Disk is used.

You can update the GCP Persistent Disk values in `tpl/values.toml`. When not specified, the default values `zone = "europe-west1-c"` and `disk size = "100GB"` are used.
The disk `zone` must be in the same zone as your GKE cluster.

### Generate chart

Generate the chart to apply your changes to the configuration:

```bash
$ helmc generate jenkins-gke
```

It also will create GCP Persistent Disk.

### Install chart

Finally, install the chart:

```bash
$ helmc install jenkins-gke
```

## Access your Jenkins application

You should now be able to access the application using the external IP configured for the Joomla service.

> Note:
>
> On GKE, the service will automatically configure a firewall rule so that the Joomla instance is accessible from the internet, for which you will be charged additionally.
>
> On other cloud platforms you may have to setup a firewall rule manually. Please refer your cloud providers documentation.

Get the external IP address of your Jenkins instance using:

```bash
$ kubectl --namespace=jenkins get services jenkins
NAME      CLUSTER_IP      EXTERNAL_IP       PORT(S)         SELECTOR      AGE
jenkins    10.63.246.116   146.148.20.117    80/TCP,443/TCP  app=jenkins    15m
```

Access your Jenkins deployment using the IP address listed under the `EXTERNAL_IP` column.

The default credentials are:

 - Username: `user`
 - Password: `bitnami`

## Cleanup

To delete the Jenkins deployment completely:

```bash
$ helmc uninstall -n jenkins jenkins
```
