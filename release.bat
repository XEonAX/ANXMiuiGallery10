for /f "delims== tokens=1,2" %%G in (VERSION) do set anx%%G=%%H
echo %anxversion%
..\ANXMiuiPortTools\hub.exe release create -a .\out\ANXExtraGalleryMagisk_%anxversion%.zip -m %anxversion% %anxversioncode%
