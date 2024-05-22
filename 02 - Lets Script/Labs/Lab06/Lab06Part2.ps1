$FilesCSV = Import-Csv -Path '.\files.csv'

foreach($FileObj in $FilesCSV) {
    $ItemType = 'DIRECTORY'

    if ($FileObj.FILEORFOLDER -eq 'ITSAFILE') {
        $ItemType = 'FILE'
    }

    New-Item -Path $FileObj.DRIVE -Name $FileObj.NAME -ItemType $ItemType
}