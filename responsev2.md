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
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a#2fSBMGT.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSA_local.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSA_remote.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSA_TS_local.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSA_TS_remote.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSC_TS_local.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fTSC_TS_remote.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\#2a_#2fVMDID0.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\CP TCP-Std.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\InternalPrommer.EPROM.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\MediaTek Wi-Fi 6 MT7921 Wireless LAN Card.ISO.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\MediaTek Wi-Fi 6 MT7921 Wireless LAN Card.TCPIP.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\MediaTek Wi-Fi 6 MT7921 Wireless LAN Card.TCPIP.Auto.1...
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PC internal.local.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.ISO.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.ISO_internal.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.Local.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.Local_internal.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.MPI.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.MPI_internal.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.PROFIBUS.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.PROFIBUS_internal.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.TCPIP.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\PLCSIM.TCPIP_internal.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\Serial cable.PPI.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\Siemens PLCSIM Virtual Ethernet Adapter.ISO.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\Siemens PLCSIM Virtual Ethernet Adapter.TCPIP.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\Siemens PLCSIM Virtual Ethernet Adapter.TCPIP.Auto.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\TS Adapter IE.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\TS Adapter.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogDevices\USB.S7USB.1.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogNames\CP_L2_1#3a.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogNames\FWL_LOAD.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogNames\MPI.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogNames\S7EPR_0.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\data\LogNames\S7ONLINE.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\trace\DecodeInformation\s7sdd_TraceMetaInfo.xml
C:\ProgramData\Siemens\Automation\Simatic OAM\trace\settings\S7sdd_TraceSettings.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000010504.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000011700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000021700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000031700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000041700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000051700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\0000061700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A171041700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A173011100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DSA#1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DSAT1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DSAV0504.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DSBT1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DVA#1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DVAC1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1DVAT1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1K7000300.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1LOGS0105.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCA0400.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCA0600.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCA0700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCB0400.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCB0600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCR0400.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCR0500.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCR0600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCS0504.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCS1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCS1900.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PLCS2000.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PPRC1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1PPRO1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1S7GR1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1SCL_1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A1STDC1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A9WDC19999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A9XE#11700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\A9XER11700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1DSAT1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1DSAV1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PLCB0400.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PLCB0600.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PLCR0400.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PLCR0500.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PLCR0600.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PPRC1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BA1PPRO1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BS7BASB1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BS7PROF1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BS7PROT1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BS7SERV1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BS7TIAP1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\BUNIEPL1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\ESMOCO1100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\NSIEPG9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\NSIESL9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7BASB1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7BASC1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7PRO11100.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7PRO11700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7PROF0504.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7PROF1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7PROT1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7SERV1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\S7TIAP1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\TIAMUI1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIE011700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIE021700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIE041700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIE051700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIED11700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIEPL1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\UNIET11700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCAURT9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCBASC1700.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCCLPR1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCDM0#9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCFA0#1600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCFA041600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCFA081600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCLORT9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCPDRP9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCPR##1700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCPRO21700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRCRT9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRECI9999.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP011700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP021700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP031700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP041700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP051700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP071700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP081700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP091700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP101700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRP111700.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT0#1600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT011600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT021600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT031600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT041600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT061600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRT071600.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCRTRD9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCSRPR9999.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCSSRA9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCWDCL9999.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCWDSR9999.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\WCWN0#9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\YA9WSN9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\YA9WVC9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\YWCPLG9999.XML
C:\ProgramData\Siemens\Automation\sws\ModulIDs\YWUXMN9999.xml
C:\ProgramData\Siemens\Automation\sws\ModulIDs\YWUXOP9999.xml
C:\ProgramData\Siemens\Automation\sws\ModullDs\TIAMUI1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PlcSim\0000010504.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PlcSim\A1K7000300.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PlcSim\A1PLCS0504.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PlcSim\S7PRO11100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PlcSim\S7PROF0504.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCA0400.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCA0600.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCB0400.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCR0400.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCS1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\A1PLCS1900.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\BA1PLCB0400.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\PLCSIMADV_STEP7_{FFA5EC3E-4066-46EA-A018-832E28DD57CC}\BA1PLCR0400.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\A1LOGS0105.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\A9WDC19999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\NSIEPG9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\NSIESL9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCCLPR1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCDM0#9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCPDRP9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRECI9999.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP011700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP021700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP031700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP041700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP051700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP071700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP081700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP091700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP101700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRP111700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCRTRD9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCSRPR9999.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCWDCL9999.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCWDSR9999.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\WCWN0#9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\YA9WSN9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\YA9WVC9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\YWCPLG9999.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\YWUXMN9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\SCADA-RT_V11_{F5506AFC-4561-4BCA-9CF0-1E79EC938138}\YWUXOP9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP14_STEP7EMC\ESMOCO1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000011700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000021700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000031700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000041700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000051700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\0000061700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\A171041700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\A1DSAV0504.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\A1PLCS1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\A1S7GR1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\A1SCL_1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\BS7BASB1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\BS7PROF1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\BS7PROT1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\BS7SERV1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\BS7TIAP1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7BASB1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7BASC1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7PRO11700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7PROF1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7PROT1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7SERV1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\S7TIAP1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{2E885E83-8749-49DE-9A20-303EECB03FE7}\WCBASC1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\A173011100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\A1PPRC1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\A1PPRO1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\A1STDC1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\BA1PPRC1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{5C7D1BBE-1A75-5ECD-9C17-1590268CF484}\BA1PPRO1100.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DSA#1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DSAT1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DSBT1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DVA#1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DVAC1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\A1DVAT1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\BA1DSAT1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_STEP7_{C16EFDE1-821E-4A84-91AD-424E6ACD92F3}\BA1DSAV1700.XML
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\A9XE#11700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\A9XER11700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\BUNIEPL1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIE011700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIE021700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIE041700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIE051700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIED11700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIEPL1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\UNIET11700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\WCBASC1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\WCPR##1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIAP17_TIA_ES_{BE58C64B-16AB-4781-8AD1-31E4494F6DA7}\WCPRO21700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\TIA_Portal_Multiuser_V17\TIAMUI1700.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCAURT9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCFA0#1600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCFA041600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCFA081600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCLORT9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRCRT9999.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT0#1600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT011600.xml
C:\ProgramData\Siemens\Automation\sws\SrcRepos\WinCC RT Advanced\WCRT021600.xml
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