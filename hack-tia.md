# License management
## Exploración licencias
**Script de exploración** que:

* Recorra todas las subcarpetas de `C:\ProgramData\Siemens`
* Liste **todos los archivos con extensiones sospechosas de licencia** como:

  * `.ekb`
  * `.xml`
  * `.alml`
  * `.wibuCmRaU` (de WIBU/CodeMeter, por si aplica)
* No eliminará nada, solo **mostrará la ruta completa de cada archivo encontrado**

---

### 📜 Script PowerShell seguro para explorar posibles licencias

Guarda este script como `BuscarLicencias.ps1` o cópialo y pégalo directamente en tu consola de PowerShell:

```powershell
$extensiones = @("*.ekb", "*.xml", "*.alml", "*.wibuCmRaU") 

foreach ($ext in $extensiones) {
    Write-Host "`nBuscando archivos '$ext' en C:\ProgramData\Siemens..." -ForegroundColor Cyan
    Get-ChildItem -Path "C:\ProgramData\Siemens" -Recurse -Filter $ext -ErrorAction SilentlyContinue |
        Select-Object FullName, Length, LastWriteTime |
        Format-Table -AutoSize
}
```

---

Este script:

* **Es seguro**, solo lee.
* Te ayudará a identificar archivos que **podrían estar funcionando como licencias**.
* También sirve para ver si están "ocultos" en otras carpetas de Siemens como `Certstore`, `PLCSIM`, `Portal V17`, etc.

## Borrado licencias .EKB
Para eliminar todas las licencias activas en tu sistema (al menos las que ALM reconoce), deberías **borrar todos los archivos con extensión `.EKB`** encontrados en:

```
C:\ProgramData\Siemens\Automation\sws\Templates\
```

Esto incluye archivos como:

* `SIMFA1PLCB0400.EKB`
* `SISLWCRT031300.EKB`
* `SISCYA9WSN99999.EKB`
* etc.

---

### Comandos:

- **Haz una copia de seguridad** de la carpeta completa:

   ```bash
   cp -r "/c/ProgramData/Siemens/Automation/sws/Templates" "/c/ProgramData/Siemens/Automation/sws/Templates_backup"
   ```

- Elimina los `.EKB` así (en Bash):

   ```bash
   find "/c/ProgramData/Siemens/Automation/sws/Templates" -name "*.EKB" -exec rm -f {} \;
   ```

   O en PowerShell (como administrador):

   ```powershell
   Remove-Item -Path "C:\ProgramData\Siemens\Automation\sws\Templates\*.EKB" -Force
   ```

## Borrado licencias (general)
Dirigir-se a la carpeta donde se encuentre el script [licencerem](./licencerem.ps1) y ejecutar-lo como administrador desde Powershell -> `.\licencerem.ps1`