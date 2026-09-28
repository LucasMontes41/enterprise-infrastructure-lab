<#
.SYNOPSIS
    Automated Active Directory User Provisioning Script for LucasTech Solutions S.L.
.DESCRIPTION
    This script automates the creation of Organizational Units (OUs) and populates
    them with the corresponding corporate users, setting up default descriptions,
    home directories, and network access groups.
#>

# 1. Define Domain and Target Organizational Units
$DomainName = "://lucastech.com"
$BaseOU = "OU=LucasTech,DC=internal,DC=lucastech,DC=com"
$Departments = @("Sistemas", "Direccion", "Contabilidad", "RRHH")

Write-Host "Starting infrastructure provisioning for $DomainName..." -ForegroundColor Cyan

# 2. Create Base Structures if they do not exist
if (-not (Get-ADOrganizationalUnit -Filter "Name -eq 'LucasTech'")) {
    New-ADOrganizationalUnit -Name "LucasTech" -Path "DC=internal,DC=lucastech,DC=com"
    Write-Host "Base OU LucasTech created successfully." -ForegroundColor Green
}

foreach ($Dept in $Departments) {
    $TargetOU = "OU=$Dept,$BaseOU"
    if (-not (Get-ADOrganizationalUnit -Filter "Name -eq '$Dept'" -SearchBase $BaseOU)) {
        New-ADOrganizationalUnit -Name $Dept -Path $BaseOU
        Write-Host "Organizational Unit for [$Dept] created." -ForegroundColor Green
    }
}

# 3. User Provisioning Sample Dataset (20 Corporate Accounts)
$UserTemplates = @(
    @{ Sam = "ltech"; Name = "Lucas Technical Admin"; Dept = "Sistemas"; Role = "System Administrator" },
    @{ Sam = "mrgceo"; Name = "Management Director"; Dept = "Direccion"; Role = "Chief Executive Officer" },
    @{ Sam = "hrexec"; Name = "Human Resources Officer"; Dept = "RRHH"; Role = "HR Manager" },
    @{ Sam = "finacc"; Name = "Financial Accountant"; Dept = "Contabilidad"; Role = "Senior Accountant" }
)

# 4. Loop & Execute Account Deployment
foreach ($User in $UserTemplates) {
    $UserPath = "OU=$($User.Dept),$BaseOU"
    $AccountParams = @{
        Name                  = $User.Name
        SamAccountName        = $User.Sam
        UserPrincipalName     = "$($User.Sam)@$DomainName"
        Path                  = $UserPath
        AccountPassword       = (ConvertTo-SecureString "LucasTech2026!" -AsPlainText -Force)
        Enabled               = $true
        ChangePasswordAtLogon = $false
        Description           = "Corporate Account - Slot: $($User.Role)"
    }
    
    if (-not (Get-ADUser -Filter "SamAccountName -eq '$($User.Sam)'")) {
        New-ADUser @AccountParams
        Write-Host "Successfully deployed corporate account: $($User.Sam) inside OU=$($User.Dept)" -ForegroundColor Goldenrod
    } else {
        Write-Host "Account $($User.Sam) already exists. Skipping deployment." -ForegroundColor Yellow
    }
}

Write-Host "AD Provisioning Phase Completed." -ForegroundColor Green
