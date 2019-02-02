call ..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" incrementversionname=true incrementversion=true

..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am=".\src\ANXGallery\AndroidManifest.xml"
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" am=".\src\ANXExtraPhoto\AndroidManifest.xml"
..\ANXMiuiPortTools\versionizer.exe v=".\VERSION" mm=".\src\ANXExtraGalleryMagisk\module.prop"
