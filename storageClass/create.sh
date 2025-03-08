#!/bin/bash

kubectl create -f persistentVolume.yaml
kubectl create -f persistentVolumeClaim.yaml
kubectl create -f claimPod.yaml
