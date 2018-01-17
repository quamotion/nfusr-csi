# CSI user-space NFS driver

[![Docker Repository on Quay](https://quay.io/repository/quamotion/nfusr-csi/status "Docker Repository on Quay")](https://quay.io/repository/quamotion/nfusr-csi)

This is a CSI driver for [nfusr](https://github.com/facebookincubator/nfusr), a user-space NFS client developed by Facebook.

Before you can use this CSI driver in Kubernetes 1.9 or later,
[you need to enable alpha features, as described in the Kubernetes documentation](http://blog.kubernetes.io/2018/01/introducing-container-storage-interface.html)

## Deploy

To deploy the nfusr CSI driver in a Kubernetes cluster, clone this repository and run:

```
kubectl create -f deploy
```