Remove-Item ..\QuickLook.Plugin.CorelDrawViewer.qlplugin -ErrorAction SilentlyContinue

$files = Get-ChildItem -Path ..\bin\Release\ -Exclude *.pdb,*.xml
Compress-Archive $files ..\QuickLook.Plugin.CorelDrawViewer.zip
Move-Item ..\QuickLook.Plugin.CorelDrawViewer.zip ..\QuickLook.Plugin.CorelDrawViewer.qlplugin