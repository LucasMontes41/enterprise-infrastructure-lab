# Infrastructure Design

## Overview

This document describes the architecture of the virtual infrastructure designed for **LucasSolutions S.L.**

The objective is to deploy a realistic enterprise environment based on industry best practices, providing centralized administration, secure resource management, virtualization and professional documentation.

The infrastructure has been designed for a small-to-medium enterprise (SME) with approximately 20 employees and will be deployed entirely using virtual machines.

---

# Design Principles

The infrastructure has been designed following the following principles:

- Service separation.
- Centralized administration.
- Security by default.
- Scalability.
- Simplicity.
- Maintainability.
- Professional documentation.

Every server has a clearly defined responsibility to simplify administration and future expansion.

---

# Virtualization Platform

## Hypervisor

The entire infrastructure will be deployed using **Proxmox VE**.

Virtualization provides several advantages:

- Efficient hardware utilization.
- Easy virtual machine deployment.
- Snapshot support.
- Backup capabilities.
- Safe testing environment.
- Infrastructure scalability.

---

# Planned Virtual Machines

## DC01

**Operating System**

Windows Server 2022

**Purpose**

Primary Domain Controller.

**Services**

- Active Directory Domain Services
- DNS
- DHCP

---

## FS01

**Operating System**

Windows Server 2022

**Purpose**

Dedicated File Server.

**Services**

- SMB File Shares
- NTFS Permissions
- Shared Company Resources

---

## LINUX01

**Operating System**

Ubuntu Server

**Purpose**

Linux server used for administration and Linux services.

**Services**

- OpenSSH
- Samba
- Linux administration
- File sharing

---

## CLIENT01

**Operating System**

Windows 10

**Purpose**

Standard employee workstation joined to the domain.

---

## CLIENT02

**Operating System**

Windows 10

**Purpose**

Additional workstation used for testing Group Policies, permissions and user management.

---

# Infrastructure Objectives

The infrastructure must provide:

- Centralized authentication.
- Centralized authorization.
- Secure file sharing.
- Centralized DNS resolution.
- Automatic IP assignment using DHCP.
- Secure remote administration.
- Standardized workstation configuration.
- Centralized policy management.
- Basic cloud integration.
- Professional documentation.

---

# Infrastructure Components

The project will include the following technologies:

- Proxmox VE
- Windows Server 2022
- Windows 10
- Ubuntu Server
- Active Directory
- DNS
- DHCP
- Group Policy
- SMB File Services
- NTFS Permissions
- SSH
- PowerShell
- Bash
- Microsoft Azure (basic administration)

---

# Future Improvements

The infrastructure has been designed to support future expansion.

Possible future improvements include:

- Infrastructure monitoring.
- Backup automation.
- Additional Linux services.
- Hybrid cloud integration with Microsoft Azure.
- Security hardening.
- Additional virtual machines.
- Automation using PowerShell.

---

# Current Infrastructure Status

At the current stage, the project is in the planning phase.

The virtual infrastructure has not yet been deployed.

The next phase consists of installing Proxmox VE and beginning the implementation of the virtual environment following the architecture described in this document.
