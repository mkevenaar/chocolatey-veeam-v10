Write-Output "Installing SQL Server Express"
choco upgrade sql-server-express -y --no-progress
Write-Output "Installing VBR Server"
choco upgrade veeam-backup-and-replication-server --params '"/sqlServer:(local)\SQLEXPRESS /licenseFile:c:\packages\license-preview-1000-15FEB2020.lic /username:vagrant /password:vagrant"' --source='"local;chocolatey"' -y --no-progress
Write-Output "Installing VBR Console and Explorers"
choco upgrade veeam-backup-and-replication-management --source='"c:\Packages;chocolatey"' -y --no-progress
