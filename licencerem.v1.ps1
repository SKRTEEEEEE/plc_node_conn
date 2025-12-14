# Script para eliminar archivos de licencias Siemens TIA Portal
# ADVERTENCIA: Este script eliminará archivos. Úsalo bajo tu propio riesgo.
# Se recomienda hacer una copia de seguridad antes de ejecutar este script.

# Definir las rutas y extensiones a buscar
$basePath = "C:\ProgramData\Siemens"
$licenseRelatedPaths = @(
    "Automation\templates",
    "Automation\License Manager",
    "Automation\sws\Templates",
    "Automation\Portal V17",
    "CoRtHmiRTm"
)

# Archivos específicos relacionados con licencias
$licenseFilesPatterns = @(
    "*.EKB",
    "*license*.xml",
    "*License*.xml",
    "UserDataBase.xml",
    "*.wibuCmRaU",
    "SeCon_project.xml"  # Archivo de proyecto del Automation License Manager
)

# Función para registrar acciones en un archivo de log
function Write-Log {
    param (
        [string]$Message
    )
    
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "[$timestamp] $Message"
    
    # Mostrar en consola
    Write-Host $logMessage
    
    # Guardar en archivo de log
    $logMessage | Out-File -FilePath "C:\Temp\LicenseCleanup_Log.txt" -Append
}

# Crear directorio de log si no existe
if (-not (Test-Path "C:\Temp")) {
    New-Item -ItemType Directory -Path "C:\Temp" | Out-Null
}

Write-Log "Iniciando limpieza de archivos de licencias..."

# Contador para archivos encontrados y eliminados
$filesFound = 0
$filesDeleted = 0

# Buscar y eliminar archivos específicos de licencias en las rutas especificadas
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
                    # Intentar eliminar el archivo
                    Remove-Item -Path $file.FullName -Force -ErrorAction Stop
                    $filesDeleted++
                    Write-Log "  - ELIMINADO: $($file.FullName)"
                }
                catch {
                    Write-Log "  - ERROR al eliminar: $($file.FullName). Error: $($_.Exception.Message)"
                }
            }
        }
    }
    else {
        Write-Log "La ruta no existe: $fullPath"
    }
}

# Buscar archivos XML específicos que contengan palabras clave relacionadas con licencias
Write-Log "Buscando archivos XML que contengan información de licencias..."

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
                # Intentar eliminar el archivo
                Remove-Item -Path $xmlFile.FullName -Force -ErrorAction Stop
                $filesDeleted++
                Write-Log "  - ELIMINADO: $($xmlFile.FullName)"
            }
            catch {
                Write-Log "  - ERROR al eliminar: $($xmlFile.FullName). Error: $($_.Exception.Message)"
            }
        }
    }
    catch {
        Write-Log "Error al leer el archivo: $($xmlFile.FullName). Error: $($_.Exception.Message)"
    }
}

# Resumen
Write-Log "Proceso completado."
Write-Log "Total de archivos encontrados: $filesFound"
Write-Log "Total de archivos eliminados: $filesDeleted"
Write-Log "Consulta el log en C:\Temp\LicenseCleanup_Log.txt para más detalles."

Write-Host "`nPara completar la eliminación de licencias, te recomendamos:" -ForegroundColor Yellow
Write-Host "1. Abrir el Automation License Manager y eliminar las licencias desde la interfaz" -ForegroundColor Yellow
Write-Host "2. Reiniciar el equipo para asegurar que los cambios se apliquen correctamente" -ForegroundColor Yellow