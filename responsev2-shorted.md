C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\UserDataBase\UserDataBase.xml



Buscando archivos '*.alml' en C:\ProgramData\Siemens...

Buscando archivos '*.wibuCmRaU' en C:\ProgramData\Siemens...
PS C:\Users\Laptop> foreach ($ext in $extensiones) {
>>     Write-Host "`nBuscando archivos '$ext' en C:\ProgramData\Siemens..." -ForegroundColor Cyan
>>     Get-ChildItem -Path "C:\ProgramData\Siemens" -Recurse -Filter $ext -ErrorAction SilentlyContinue |
>>         Select-Object FullName, Length, LastWriteTime |
>>         Format-Table -AutoSize
>> }

Buscando archivos '*.ekb' en C:\ProgramData\Siemens...

FullName                                                       Length LastWriteTime
--------                                                       ------ -------------
C:\ProgramData\Siemens\Automation\templates\SITTS7BASB1700.EKB   2560 21/04/2021 16:57:08



Buscando archivos '*.xml' en C:\ProgramData\Siemens...

FullName
--------
C:\ProgramData\Siemens\Automation\Automation License Manager\projects\SeCon_project.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\InstalledSupportPackagesSlim.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\InstalledSupportPackages_17.00.0000.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\Jobs.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\ProductInventoryDS.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\Setup.Inventory.UI.xml
C:\ProgramData\Siemens\Automation\AWB\SWM\updatescache.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\CompCheck.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250312_161054_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250312_165035_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250312_170215_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250312_170744_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_212819_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_213623_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_214603_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_215404_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_221128_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250425_221202_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250426_101220_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250426_101302_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_163919_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_164006_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_194343_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_194718_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_195942_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250427_200415_Z.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250502_163612_A.xml
C:\ProgramData\Siemens\Automation\Logfiles\Setup\Inventory_20250502_163649_Z.xml
C:\ProgramData\Siemens\Automation\PLCSIM V17\Settings\Settings.xml
C:\ProgramData\Siemens\Automation\Portal V17\CorporateSettings\CorporateSettings.xml
C:\ProgramData\Siemens\Automation\Portal V17\Diagnostics\1700.0.4302.1\ErrorReports.xml
C:\ProgramData\Siemens\Automation\Portal V17\Help\AssociativeLinks\en-US\ALinks.xml
C:\ProgramData\Siemens\Automation\Portal V17\Help\Scope\en-US\Scope.xml
C:\ProgramData\Siemens\Automation\Portal V17\Help\Toc\en-US\Toc.xml
C:\ProgramData\Siemens\Automation\Portal V17\HMI\1700.0.4302.1_4302.1\ReadWrite\Toolbox\Simatic.Hmi.Toolbox.Graphics...
C:\ProgramData\Siemens\Automation\Portal V17\HMI\1700.0.4302.1_4302.1\ReadWrite\Toolbox\Toolbox-MyControls-Config.xml
C:\ProgramData\Siemens\Automation\Portal V17\HMI\1700.0.4302.1_4302.1\ReadWrite\Toolbox\UISettings.xml
C:\ProgramData\Siemens\Automation\Portal V17\Settings\Settings.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\DCP_Server.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LLDP.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\PGSP.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\TCP_Adapter.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a#2fGPRS.xml
[... etc + 200 lines aprox.]
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT031600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT041600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT061600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT071600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCSSRA9999.xml
C:\ProgramData\Siemens\Automation\TraceEngine\meta\TraceService\Automation-CT-TraceEngine-GlobalSettings.xml
C:\ProgramData\Siemens\Automation\TraceEngine\meta\TraceWriter\Automation-CT-TraceFileWriter-Settings.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\DeviceInfo.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\WebCfg.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\Escaper\EscapeTable.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\OPC_UA\HmiWebLink.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\OPC_UA\MWEB_BNP_BaseModel_HMI.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\OPC_UA\MWEB_ServerObject.xml
C:\ProgramData\Siemens\CoRtHmiRTm\MiniWeb17.0.0\SystemRoot\UserDataBase\UserDataBase.xml



Buscando archivos '*.alml' en C:\ProgramData\Siemens...

Buscando archivos '*.wibuCmRaU' en C:\ProgramData\Siemens...