# Company Design: LucasSolutions S.L.

## 1. Company Overview
LucasSolutions S.L. is a small-to-medium enterprise (SME) specialized in IT consulting, cloud services, and custom software development. The company is migrating from an unmanaged, decentralized workgroup model to a fully centralized, secure, and scalable on-premises domain infrastructure.

## 2. Business Sector
* **Sector**: IT Consulting and Software Engineering.
* **Target Audience**: B2B clients requiring high-availability technical services.
* **Compliance Needs**: Intellectual property protection (source code), strict access control, and GDPR data privacy compliance.

## 3. Company Size & Workforce
The company consists of **20 employees** distributed across 4 strategic departments. Every user requires a unique domain account, tailored network access, and specific security policies (GPOs).

---

## 4. Organizational Departments & Access Requirements

### Management (Dirección)
* **Users**: 2 (CEO, CFO).
* **Role**: High-level business administration and financial decision-making.
* **Access Needs**: Read/write access to financial and strategic folders. Read-only access to HR reports. No local administrative privileges.

### Administration & HR (Administración y RRHH)
* **Users**: 3 (HR Manager, 2 Accountants).
* **Role**: Payroll management, invoicing, legal compliance, and hiring.
* **Access Needs**: Highly restrictive NTFS permissions. Exclusive access to the "Finance" and "HR" shared folders. Strict USB blocking policies via GPO to prevent data leaks.

### IT & Systems (Informática)
* **Users**: 3 (System Administrators / Helpdesk).
* **Role**: Infrastructure maintenance, user support, and security auditing.
* **Access Needs**: Dual-account model. Standard accounts for daily tasks (mail, browsing) and separated administrative domain accounts (`admin.username`) for infrastructure changes. Full access to the entire network.

### Development & Engineering (Desarrollo)
* **Users**: 12 (Software Developers, QA Testers).
* **Role**: Source code production, software testing, and technical deployment.
* **Access Needs**: Access to local development servers (Linux/Samba repositories). Restrictive internet access rules to prevent unauthorized code sharing.

## 5. Business Requirements

The company requires:

- Centralized authentication.
- Centralized user management.
- Secure file sharing.
- Automatic IP address assignment.
- Name resolution through DNS.
- Secure remote administration.
- Daily backups.
- Basic monitoring.
- Standardized workstation configuration.
- Role-based access control.

## 6. Current Challenges

Before this migration the company operates using a simple workgroup.

Current issues include:

- Users share local accounts.
- No centralized authentication.
- No centralized file permissions.
- Manual workstation configuration.
- No centralized policy management.
- Difficult backup procedures.
- Limited scalability.

## 7. Infrastructure Goals

The new infrastructure should provide:

- Centralized identity management.
- Secure resource access.
- Simplified administration.
- Improved scalability.
- Better security.
- Easier maintenance.