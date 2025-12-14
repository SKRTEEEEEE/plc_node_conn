# Script avanzado para eliminar archivos de licencias Siemens TIA Portal
# ADVERTENCIA: Este script eliminará archivos y detendrá servicios. Úsalo bajo tu propio riesgo.
# Se recomienda hacer una copia de seguridad antes de ejecutar este script.

# Asegurarse de que se está ejecutando como administrador
$currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
if (-not $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Este script debe ejecutarse como Administrador. Por favor, reinicia PowerShell como Administrador." -ForegroundColor Red
    exit
}

# Función para registrar acciones en un archivo de log
function Write-Log {
    param (
        [string]$Message,
        [string]$Color = "White"
    )
    
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "[$timestamp] $Message"
    
    # Mostrar en consola
    Write-Host $logMessage -ForegroundColor $Color
    
    # Guardar en archivo de log
    $logMessage | Out-File -FilePath "C:\Temp\LicenseCleanup_Log.txt" -Append
}

# Crear directorio de log si no existe
if (-not (Test-Path "C:\Temp")) {
    New-Item -ItemType Directory -Path "C:\Temp" | Out-Null
}

Write-Log "=== INICIANDO LIMPIEZA DE ARCHIVOS DE LICENCIAS SIEMENS ===" "Cyan"

# 1. Detener servicios relacionados con Siemens
Write-Log "Deteniendo servicios relacionados con Siemens..." "Yellow"
$siemensServices = Get-Service | Where-Object { $_.DisplayName -like "*Siemens*" -or $_.DisplayName -like "*Automation*" -or $_.Name -like "*ALM*" }

foreach ($service in $siemensServices) {
    try {
        Write-Log "Deteniendo servicio: $($service.DisplayName) [$($service.Name)]"
        Stop-Service -Name $service.Name -Force -ErrorAction SilentlyContinue
        Write-Log "  - Servicio detenido: $($service.Name)" "Green"
    }
    catch {
        Write-Log "  - ERROR al detener servicio: $($service.Name). Error: $($_.Exception.Message)" "Red"
    }
}

# 2. Cerrar procesos relacionados con Siemens
Write-Log "Cerrando procesos relacionados con Siemens..." "Yellow"
$siemensProcesses = @(
    "AutomationLicenseManager", 
    "ALM", 
    "simatic", 
    "wincc", 
    "tia", 
    "portal", 
    "STEP7", 
    "S7",
    "Automation"
)

foreach ($procName in $siemensProcesses) {
    $processes = Get-Process | Where-Object { $_.Name -like "*$procName*" } -ErrorAction SilentlyContinue
    
    foreach ($process in $processes) {
        try {
            Write-Log "Cerrando proceso: $($process.Name) (PID: $($process.Id))"
            Stop-Process -Id $process.Id -Force -ErrorAction SilentlyContinue
            Write-Log "  - Proceso cerrado: $($process.Name)" "Green"
        }
        catch {
            Write-Log "  - ERROR al cerrar proceso: $($process.Name). Error: $($_.Exception.Message)" "Red"
        }
    }
}

# 3. Definir las rutas y extensiones a buscar
$basePath = "C:\ProgramData\Siemens"
$licenseRelatedPaths = @(
    "Automation\templates",
    "Automation\License Manager",
    "Automation\sws\Templates",
    "Automation\Portal V17",
    "Automation\Logfiles",
    "CoRtHmiRTm"
)

# Archivos específicos relacionados con licencias
$licenseFilesPatterns = @(
    "*.EKB",
    "*license*.xml",
    "*License*.xml",
    "UserDataBase.xml",
    "*.wibuCmRaU",
    "SeCon_project.xml",  # Archivo de proyecto del Automation License Manager
    "*.ALG",  # Archivos de licencia adicionales
    "*.lic",
    "*.key"
)

# Buscar también en otras ubicaciones conocidas de licencias Siemens
$additionalLicensePaths = @(
    "C:\Program Files\Common Files\Siemens\Automation\Simatic OAM\data",
    "C:\Program Files\Siemens\Automation",
    "C:\Program Files (x86)\Common Files\Siemens"
)

# Contador para archivos encontrados y eliminados
$filesFound = 0
$filesDeleted = 0

# 4. Buscar y eliminar archivos específicos de licencias en las rutas especificadas
Write-Log "Buscando archivos de licencias en rutas conocidas..." "Yellow"
foreach ($path in $licenseRelatedPaths) {
    $fullPath = Join-Path -Path $basePath -ChildPath $path
    
    if (Test-Path $fullPath) {
        Write-Log "Buscando en: $fullPath"
        
        foreach ($pattern in $licenseFilesPatterns) {
            $files = Get-ChildItem -Path $fullPath -Filter $pattern -Recurse -ErrorAction SilentlyContinue
            
            foreach ($file in $files) {
                $filesFound++
                Write-Log "Encontrado: $($file.FullName)"
                
                try {
                    # Establecer atributos del archivo a normal antes de eliminar
                    Set-ItemProperty -Path $file.FullName -Name Attributes -Value Normal -ErrorAction SilentlyContinue
                    
                    # Intentar eliminar el archivo
                    Remove-Item -Path $file.FullName -Force -ErrorAction Stop
                    $filesDeleted++
                    Write-Log "  - ELIMINADO: $($file.FullName)" "Green"
                }
                catch {
                    Write-Log "  - ERROR al eliminar: $($file.FullName). Error: $($_.Exception.Message)" "Red"
                    
                    # Intentar usando el método alternativo
                    try {
                        Write-Log "  - Intentando método alternativo de eliminación..." "Yellow"
                        
                        # Utilizar el comando cmd para forzar la eliminación
                        $deleteCommand = "cmd.exe /c del /F /Q `"$($file.FullName)`""
                        Invoke-Expression $deleteCommand
                        
                        # Verificar si el archivo fue eliminado
                        if (-not (Test-Path $file.FullName)) {
                            $filesDeleted++
                            Write-Log "  - ELIMINADO (método alternativo): $($file.FullName)" "Green"
                        }
                        else {
                            Write-Log "  - No se pudo eliminar usando método alternativo: $($file.FullName)" "Red"
                        }
                    }
                    catch {
                        Write-Log "  - ERROR con método alternativo: $($_.Exception.Message)" "Red"
                    }
                }
            }
        }
    }
    else {
        Write-Log "La ruta no existe: $fullPath" "Yellow"
    }
}

# 5. Buscar en las rutas adicionales
foreach ($path in $additionalLicensePaths) {
    if (Test-Path $path) {
        Write-Log "Buscando en ruta adicional: $path"
        
        foreach ($pattern in $licenseFilesPatterns) {
            $files = Get-ChildItem -Path $path -Filter $pattern -Recurse -ErrorAction SilentlyContinue
            
            foreach ($file in $files) {
                $filesFound++
                Write-Log "Encontrado: $($file.FullName)"
                
                try {
                    # Establecer atributos del archivo a normal antes de eliminar
                    Set-ItemProperty -Path $file.FullName -Name Attributes -Value Normal -ErrorAction SilentlyContinue
                    
                    # Intentar eliminar el archivo
                    Remove-Item -Path $file.FullName -Force -ErrorAction Stop
                    $filesDeleted++
                    Write-Log "  - ELIMINADO: $($file.FullName)" "Green"
                }
                catch {
                    Write-Log "  - ERROR al eliminar: $($file.FullName). Error: $($_.Exception.Message)" "Red"
                    
                    # Intentar método alternativo
                    try {
                        $deleteCommand = "cmd.exe /c del /F /Q `"$($file.FullName)`""
                        Invoke-Expression $deleteCommand
                        
                        if (-not (Test-Path $file.FullName)) {
                            $filesDeleted++
                            Write-Log "  - ELIMINADO (método alternativo): $($file.FullName)" "Green"
                        }
                    }
                    catch {}
                }
            }
        }
    }
}

# 6. Buscar archivos XML específicos que contengan palabras clave relacionadas con licencias
Write-Log "Buscando archivos XML que contengan información de licencias..." "Yellow"

$xmlFiles = Get-ChildItem -Path $basePath -Filter "*.xml" -Recurse -ErrorAction SilentlyContinue

foreach ($xmlFile in $xmlFiles) {
    try {
        # Leer el contenido del archivo XML
        $content = Get-Content -Path $xmlFile.FullName -Raw -ErrorAction SilentlyContinue
        
        # Comprobar si el archivo contiene palabras clave relacionadas con licencias
        if ($content -match "license|License|SIMATIC HMI|WinCC|automation|authorization|SIFUWC|SITTS") {
            $filesFound++
            Write-Log "Encontrado XML con información de licencias: $($xmlFile.FullName)"
            
            try {
                # Establecer atributos del archivo a normal antes de eliminar
                Set-ItemProperty -Path $xmlFile.FullName -Name Attributes -Value Normal -ErrorAction SilentlyContinue
                
                # Intentar eliminar el archivo
                Remove-Item -Path $xmlFile.FullName -Force -ErrorAction Stop
                $filesDeleted++
                Write-Log "  - ELIMINADO: $($xmlFile.FullName)" "Green"
            }
            catch {
                Write-Log "  - ERROR al eliminar: $($xmlFile.FullName). Error: $($_.Exception.Message)" "Red"
                
                # Intentar método alternativo
                try {
                    $deleteCommand = "cmd.exe /c del /F /Q `"$($xmlFile.FullName)`""
                    Invoke-Expression $deleteCommand
                    
                    if (-not (Test-Path $xmlFile.FullName)) {
                        $filesDeleted++
                        Write-Log "  - ELIMINADO (método alternativo): $($xmlFile.FullName)" "Green"
                    }
                }
                catch {}
            }
        }
    }
    catch {
        Write-Log "Error al leer el archivo: $($xmlFile.FullName). Error: $($_.Exception.Message)" "Red"
    }
}

# 7. Limpiar el registro de Windows (archivos específicos de licencias)
Write-Log "Limpiando entradas del registro relacionadas con licencias Siemens..." "Yellow"

$registryPaths = @(
    "HKLM:\SOFTWARE\Siemens",
    "HKLM:\SOFTWARE\WOW6432Node\Siemens",
    "HKCU:\SOFTWARE\Siemens"
)

$licenseKeywords = @(
    "License",
    "Automation",
    "WinCC",
    "SIMATIC"
)

foreach ($regPath in $registryPaths) {
    if (Test-Path $regPath) {
        Write-Log "Revisando ruta de registro: $regPath"
        
        # Función recursiva para eliminar claves que coincidan con las palabras clave
        function Remove-LicenseKeys {
            param (
                [string]$Path
            )
            
            # Obtener todas las subclaves
            $subKeys = Get-ChildItem -Path $Path -ErrorAction SilentlyContinue
            
            foreach ($key in $subKeys) {
                # Comprobar si la clave contiene palabras clave relacionadas con licencias
                $keyName = $key.PSChildName
                $shouldRemove = $false
                
                foreach ($keyword in $licenseKeywords) {
                    if ($keyName -like "*$keyword*") {
                        $shouldRemove = $true
                        break
                    }
                }
                
                if ($shouldRemove) {
                    try {
                        Write-Log "Encontrada clave de registro relacionada con licencias: $($key.Name)"
                        Remove-Item -Path $key.PSPath -Recurse -Force -ErrorAction Stop
                        Write-Log "  - ELIMINADA clave de registro: $($key.Name)" "Green"
                    }
                    catch {
                        Write-Log "  - ERROR al eliminar clave de registro: $($key.Name). Error: $($_.Exception.Message)" "Red"
                    }
                }
                else {
                    # Si la clave no coincide con las palabras clave, revisar sus subclaves
                    Remove-LicenseKeys -Path $key.PSPath
                }
            }
        }
        
        # Iniciar la eliminación recursiva de claves
        Remove-LicenseKeys -Path $regPath
    }
}

# 8. Eliminar archivos específicos de licencia UserDataBase.xml
$userDbFile = "C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\UserDataBase\UserDataBase.xml"
if (Test-Path $userDbFile) {
    Write-Log "Encontrado archivo UserDataBase.xml: $userDbFile"
    
    try {
        # Hacer una copia de seguridad del archivo
        Copy-Item -Path $userDbFile -Destination "$userDbFile.bak" -ErrorAction SilentlyContinue
        Write-Log "  - Copia de seguridad creada: $userDbFile.bak"
        
        # Intentar limpiar el contenido del archivo en lugar de eliminarlo
        # Esto puede ser menos problemático que eliminar el archivo por completo
        $emptyXml = '<?xml version="1.0" encoding="UTF-8"?><UserDataBase></UserDataBase>'
        $emptyXml | Out-File -FilePath $userDbFile -Encoding UTF8 -Force
        Write-Log "  - Contenido del archivo UserDataBase.xml limpiado" "Green"
    }
    catch {
        Write-Log "  - ERROR al procesar UserDataBase.xml: $($_.Exception.Message)" "Red"
    }
}

# 9. Resumen
Write-Log "=== PROCESO COMPLETADO ===" "Cyan"
Write-Log "Total de archivos encontrados: $filesFound" "Yellow"
Write-Log "Total de archivos eliminados: $filesDeleted" "Green"
Write-Log "Consulta el log en C:\Temp\LicenseCleanup_Log.txt para más detalles."

Write-Host "`nPara completar la eliminación de licencias, te recomendamos:" -ForegroundColor Yellow
Write-Host "1. Reiniciar el equipo para asegurar que los cambios se apliquen correctamente" -ForegroundColor Yellow
Write-Host "2. Después de reiniciar, abrir el Automation License Manager y verificar que las licencias hayan sido eliminadas" -ForegroundColor Yellow
Write-Host "3. Si aún aparecen licencias, eliminarlas manualmente desde la interfaz del Automation License Manager" -ForegroundColor Yellow
Write-Host "`nIMPORTANTE: Es posible que algunas licencias estén protegidas por el sistema y no puedan ser eliminadas automáticamente." -ForegroundColor Red