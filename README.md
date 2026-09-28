# 🚀 LucasTech Hybrid Infrastructure Solutions

Este repositorio contiene toda la documentación técnica oficial, scripts de automatización empresarial y archivos de configuración esenciales correspondientes al despliegue de infraestructura híbrida para la organización **LucasTech Solutions S.L.** (bajo el espacio de nombres de dominio centralizado `://lucastech.com`).

El entorno completo ha sido diseñado, instalado y validado con éxito utilizando un modelo híbrido multiplataforma confinado de forma perimetral en un entorno virtual empresarial.

---

## 🗺️ Topología de Red y Arquitectura del Entorno

Toda la infraestructura de producción está confinada de forma estricta en un switch virtual privado aislado (**`vmbr1`**) implementado en un hipervisor **Proxmox VE**, aislando el tráfico interno de la organización de cualquier vulnerabilidad externa:

*   **`DC01` (Windows Server 2022)**: Controlador de Dominio Primario. IP Fija: `192.168.10.10`. Roles activos: Servicios de Dominio de Active Directory (AD DS), Servidor DNS Autorizativo y Servidor DHCP corporativo encargado del aprovisionamiento automático de direccionamiento en la red.
*   **`FS01` (Ubuntu Server 24.04 LTS)**: Servidor de Almacenamiento en Red. IP Dinámica mediante reserva DHCP fija: `192.168.10.51`. Rol: Servidor de archivos Samba integrado en la seguridad del dominio mediante Kerberos, permitiendo control de acceso unificado.
*   **`CLIENT01` (Windows 10 Pro)**: Puesto de trabajo del usuario final (`ltech`). IP Dinámica por DHCP: `192.168.10.52`. Equipo corporativo unido al dominio y gestionado centralizadamente mediante directivas de grupo avanzadas.

---

## 🛠️ Soluciones e Ingeniería de Sistemas Implementada

### 1. Automatización de Identidades con PowerShell
Se ha implementado un script de aprovisionamiento masivo de cuentas de usuario en Active Directory (`/scripts/provision-users.ps1`). El script genera de forma dinámica las Unidades Organizativas (OUs) correspondientes a los departamentos estructurales de la empresa (Sistemas, Dirección, Contabilidad, RRHH) e inyecta las plantillas de usuario con contraseñas seguras y descripciones de rol de producción.

### 2. Almacenamiento Híbrido e Integración Multiplataforma
Configuración y despliegue del servicio Samba en GNU/Linux (`/config/smb.conf`). Mediante la sincronización temporal estricta de relojes y el protocolo de autenticación Kerberos v5, se ha conseguido resolver el acceso cruzado transparente. Los usuarios de Active Directory de Windows pueden leer y escribir datos en caliente en el disco duro del servidor Ubuntu de forma nativa y segura.

### 3. Fortalecimiento y Control de Entorno mediante GPOs
*   **Mapeo Automático de Unidades**: Inyección centralizada en el arranque del cliente para montar el almacenamiento compartido de Linux automáticamente como la **Unidad Z:** (*Almacen LucasTech*) mediante preferencias de directiva.
*   **Identidad y Restricción Corporativa**: Despliegue mandatorio del tapiz de escritorio oficial de la empresa a toda la plantilla desde el volumen `NETLOGON`, bloqueando cualquier intento de modificación local no autorizado por el empleado.

---

## 📂 Contenido del Repositorio
*   📁 **`/docs`**: Documentación de diseño arquitectónico y de negocio (`infrastructure-design.md`, `company-design.md`, `project-overview.md`).
*   📁 **`/scripts`**: Código fuente de automatización en PowerShell de Active Directory.
*   📁 **`/config`**: Ficheros de configuración de servicios de red en entornos Linux (Samba configuration).
