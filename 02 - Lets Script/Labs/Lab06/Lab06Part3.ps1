$FilesCSV = Import-Csv -Path '.\files.csv'

foreach($FileObj in $FilesCSV) {
    'Do you want to create ' + $FileObj.DRIVE + $FileObj.NAME +'? (y/n)'
    $Answer = Read-Host
    
    if ($Answer -eq 'y') {
        $ItemType = 'DIRECTORY'

        if ($FileObj.FILEORFOLDER -eq 'ITSAFILE') {
            $ItemType = 'FILE'
        }

        New-Item -Path $FileObj.DRIVE -Name $FileObj.NAME -ItemType $ItemType
    
    } else {
        'Ok, not create ' + $FileObj.DRIVE + $FileObj.NAME
    }
}