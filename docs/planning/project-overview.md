# Project Overview: LucasTech Infrastructure

## Purpose
The purpose of this project is the design, full implementation, and technical documentation of a realistic enterprise IT infrastructure based on production environment best practices. 

The environment successfully simulates a production-ready SME infrastructure running automated domain management, robust network core services, and hybrid Linux-Windows resource integration.

---

## Completed Objectives
* **Enterprise Infrastructure from Scratch**: Successfully deployed a full corporate network on a **Proxmox VE** hypervisor environment.
* **Hybrid Systems Administration**: Gained advanced, practical experience configuring Windows Server 2022 and Ubuntu Server 24.04 LTS to communicate natively.
* **Infrastructure Automation**: Implemented automated user provisioning using PowerShell and enforced centralized workstation control via Group Policies (GPOs).
* **Professional Auditing & Troubleshooting**: Documented critical resolution processes, including real-time network debugging, DNS resolution fixes, and Kerberos time synchronization.

---

## Implemented Technologies
* **Virtualization**: Proxmox VE (isolated virtual switch network `vmbr1`).
* **Identity & Directory Services**: Active Directory Domain Services (AD DS) on Windows Server 2022 (`://lucastech.com`).
* **Core Network Services**: Centralized DNS and automatic IP allocation via DHCP Server.
* **Cross-Platform Storage**: Linux Samba File Services integrated into the Active Directory domain security model.
* **Configuration & Automation**: Active Directory Group Policies (GPOs) for network drive mapping (Unidad Z:) and corporate background deployment, combined with automated PowerShell scripting.

---

## Completed Project Phases
1. **Infrastructure Planning & Requirements Definition**
2. **Virtual Platform Provisioning (Proxmox VE Setup)**
3. **Windows Server Core Services Deployment (AD DS, DNS, DHCP)**
4. **Automated Active Directory Provisioning via PowerShell**
5. **Hybrid Storage Integration (Ubuntu Server 24.04 + Samba)**
6. **Centralized Client Hardening and Environment Enforcement via GPOs**
7. **Final Validation, Network Auditing, and Documentation**
