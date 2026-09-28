# Infrastructure Design: LucasTech Solutions S.L.

## Overview
This document describes the final architecture of the virtual infrastructure deployed for **LucasTech Solutions S.L.** (using the domain `internal.lucastech.com`). 

The infrastructure has been successfully deployed using an enterprise hybrid model, providing centralized administration, secure resource management, and high-performance virtualization.

---

# Design Principles
- Service separation and efficiency.
- Centralized hybrid administration (Windows AD DS + Linux Samba).
- Security by default (Isolated perimeter network).
- Infrastructure scalability and maintainability.

---

# Virtualization Platform: Proxmox VE
The entire environment runs on a **Proxmox VE** hypervisor using local storage optimization.
*   **Networking**: All production virtual machines are strictly bound to an isolated host-only bridge (**`vmbr1`**), securing the internal corporate traffic from external vulnerabilities.

---

# Deployed Virtual Machines

## DC01 (Domain Controller)
*   **Operating System**: Windows Server 2022
*   **IP Address**: `192.168.10.10` (Static)
*   **Services**: Active Directory Domain Services (AD DS), DNS Server, and Corporate DHCP Server.
*   **Role**: Handles centralized identity management and automatic IP provisioning for the network.

## FS01 (Hybrid File Server)
*   **Operating System**: Ubuntu Server 24.04 LTS
*   **IP Address**: Dynamic via Windows DHCP Reservation (`192.168.10.51`)
*   **Services**: OpenSSH, Kerberos v5 Client (`realmd`/`sssd`), and Samba File Services.
*   **Role**: Serves as the core corporate storage. It is integrated into the Active Directory domain, allowing seamless data access.

## CLIENT01 (Standard Workstation)
*   **Operating System**: Windows 10 Pro
*   **IP Address**: Dynamic via DHCP (`192.168.10.52`)
*   **Role**: Secure end-user workstation joined to the domain, constrained by Group Policies (GPOs).

---

# Active Infrastructure Components & GPOs
*   **Automated AD Provisioning**: Mass deployment of users via automated PowerShell scripting.
*   **Drive Mapping GPO**: Centralized enforcement that automatically mounts the Linux Samba share as **`Unidad Z:`** on user logon.
*   **Corporate Desktop GPO**: Enforces the official company background stored in `NETLOGON` and blocks unauthorized user modifications.

---

# Current Infrastructure Status
**STATUS: Deployed & Validated.**
The infrastructure is fully operational. Active Directory services, DHCP scopes, cross-platform Linux file sharing, and GPO restrictions have been tested and verified from the `CLIENT01` workstation.
