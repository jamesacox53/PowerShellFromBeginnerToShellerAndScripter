$SrcPathStr = 'C:\Source'
$DestPathStr = 'C:\Dest'

$DoesDestExist = Test-Path -Path $DestPathStr

if ($DoesDestExist -eq $False) {
    New-Item -Path $DestPathStr -ItemType 'Directory'
}

# Copy Images ------------------------------------
$ImagesPathStr = $DestPathStr + '\Images'
$DoesImagesFolderExist = Test-Path -Path $ImagesPathStr

if ($DoesImagesFolderExist -eq $False) {
    New-Item -Path $ImagesPathStr -ItemType 'directory'
}

$Images = Get-ChildItem -Path $SrcPathStr | Where-Object {$PSItem.Extension -eq '.bmp'}
$Images | Copy-Item -Destination $ImagesPathStr

# Copy Docs --------------------------------------
$DocsPathStr = $DestPathStr + '\Docs'
$DoesDocsFolderExist = Test-Path -Path $DocsPathStr

if ($DoesDocsFolderExist -eq $False) {
    New-Item -Path $DocsPathStr -ItemType 'directory'
}

$Docs = Get-ChildItem -Path $SrcPathStr | Where-Object {$PSItem.Extension -eq '.txt' -or $PSItem.Extension -eq '.docx'}
$Docs | Copy-Item -Destination $DocsPathStr