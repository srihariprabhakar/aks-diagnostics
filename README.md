# AKS Diagnostics Script

This repository contains a lightweight Bash script to help you quickly diagnose common issues in an Azure Kubernetes Service (AKS) cluster.

## 🔧 What It Does

The script performs the following checks:

1. **Pod Status Overview** – Lists all pods in all namespaces with IPs and node details.
2. **CrashLoop/Error Detection** – Finds pods stuck in `CrashLoopBackOff`, `Error`, or `Pending` states.
3. **Node Conditions** – Displays node readiness and health conditions (memory pressure, disk pressure, etc.).
4. **Service Map** – Lists all services, types, and IP mappings across namespaces.

---

Feel free to contribute and edit validation requirements as needed.
The first curl command automatically downloads the script directly onto your AKS cluster + runs it, the second downloads and requires execute permissions:


```bash
curl -s https://raw.githubusercontent.com/srihariprabhakar/aks-diagnostics/main/aks-diagnostics.sh | bash


curl -O https://raw.githubusercontent.com/srihariprabhakar/aks-diagnostics/main/aks-diagnostics.sh
chmod +x aks-diagnostics.sh
./aks-diagnostics.sh

