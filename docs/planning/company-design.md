# Company Design: LucasTech Solutions S.L.

## 1. Company Overview
LucasTech Solutions S.L. is a small-to-medium enterprise (SME) specialized in IT consulting, cloud services, and custom software development. The company has successfully migrated from an unmanaged, decentralized workgroup model to a fully centralized, secure, and scalable on-premises hybrid domain infrastructure.

## 2. Business Sector
* **Sector**: IT Consulting and Software Engineering.
* **Target Audience**: B2B clients requiring high-availability technical services.
* **Compliance Needs**: Intellectual property protection (source code), strict role-based access control, and GDPR data privacy compliance.

## 3. Company Size & Workforce
The company consists of **20 employees** distributed across 4 strategic departments. Every user belongs to a specific Organizational Unit (OU) inside Active Directory (domain: `://lucastech.com`), tailored with specific security policies (GPOs) and network shares.

---

## 4. Organizational Departments & Access Requirements

### Management (Dirección)
* **Users**: 2 (CEO, CFO).
* **Role**: High-level business administration and financial decision-making.
* **Access Needs**: Read/write access to financial and strategic folders. Read-only access to HR reports. Fully managed via central domain permissions.

### Administration & HR (Administración y RRHH)
* **Users**: 3 (HR Manager, 2 Accountants).
* **Role**: Payroll management, invoicing, legal compliance, and hiring.
* **Access Needs**: Highly restrictive environment. Exclusive access to financial and HR resources, monitored closely through domain policies.

### IT & Systems (Informática)
* **Users**: 3 (System Administrators / Helpdesk).
* **Role**: Infrastructure maintenance, user support, and security auditing.
* **Access Needs**: Centralized domain accounts for infrastructure changes, system monitoring, and complete cross-platform network control.

### Development & Engineering (Desarrollo)
* **Users**: 12 (Software Developers, QA Testers).
* **Role**: Source code production, software testing, and technical deployment.
* **Access Needs**: Full access to local storage repositories and network shares hosted on the hybrid Linux/Samba file server.

---

## 5. Fulfilled Business Requirements
The newly deployed infrastructure successfully solves the company's past operational challenges by delivering:
- **Centralized Authentication & User Management**: Managed entirely through Windows Server 2022 AD DS.
- **Secure Cross-Platform File Sharing**: Enabled via an Ubuntu Server 24.04 file server running Samba.
- **Automated Network Core Services**: Automatic IP assignment via DHCP scope and local name resolution through DNS.
- **Standardized Workstation Configuration**: Centralized enforcement of network drive mappings (Unidad Z:) and corporate desktops via Group Policies (GPOs).
