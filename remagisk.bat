
for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
xcopy /s /y .\out\ANXGallery.apk .\src\ANXExtraGalleryMagisk\system\priv-app\ANXGallery
xcopy /s /y .\out\ANXExtraPhoto.apk .\src\ANXExtraGalleryMagisk\system\priv-app\ANXExtraPhoto
del .\out\ANXExtraGalleryMagisk.zip
del .\out\ANXExtraGalleryMagisk_*.zip
"C:\Program Files\7-Zip\7z.exe" a -tzip .\out\ANXExtraGalleryMagisk.zip .\src\ANXExtraGalleryMagisk\*
copy .\out\ANXExtraGalleryMagisk.zip /B .\out\ANXExtraGalleryMagisk_%anxversion%.zip
adb push .\out\ANXExtraGalleryMagisk.zip  /sdcard/zips