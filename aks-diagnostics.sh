#!/bin/bash

echo "[1] Listing all pods in all namespaces..."
kubectl get pods -A -o wide

echo "[2] Checking for pods in CrashLoopBackOff or Error..."
kubectl get pods -A | grep -E 'CrashLoopBackOff|Error'

echo "[3] Checking node readiness and conditions..."
kubectl get nodes -o wide
kubectl describe nodes | grep -A5 "Conditions"

echo "[4] Listing all services and their Cluster IPs..."
kubectl get svc -A -o wide
