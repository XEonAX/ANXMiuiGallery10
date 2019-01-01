call .\tools\ANXAppPortVersion\bin\Debug\ANXAppPortVersion.exe v=".\VERSION" incrementversionname=true

call .\tools\ANXAppPortVersion\bin\Debug\ANXAppPortVersion.exe v=".\VERSION" am=".\src\ANXGallery\AndroidManifest.xml"
call .\tools\ANXAppPortVersion\bin\Debug\ANXAppPortVersion.exe v=".\VERSION" am=".\src\ANXExtraPhoto\AndroidManifest.xml"
call .\tools\ANXAppPortVersion\bin\Debug\ANXAppPortVersion.exe v=".\VERSION" mm=".\src\ANXExtraGalleryMagisk\module.prop"
