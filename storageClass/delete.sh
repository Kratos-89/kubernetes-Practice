#!/bin/bash

kubectl delete -f claimPod.yaml
kubectl delete -f persistentVolumeClaim.yaml
kubectl delete -f persistentVolume.yaml
