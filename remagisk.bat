
xcopy /s .\out\ANXGallery.apk .\src\ANXExtraGalleryMagisk\system\priv-app\ANXGallery
xcopy /s .\out\ANXExtraPhoto.apk .\src\ANXExtraGalleryMagisk\system\priv-app\ANXExtraPhoto
del .\out\ANXExtraGalleryMagisk.zip
"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXExtraGalleryMagisk.zip .\src\ANXExtraGalleryMagisk\*
adb push .\out\ANXExtraGalleryMagisk.zip  /sdcard/zips