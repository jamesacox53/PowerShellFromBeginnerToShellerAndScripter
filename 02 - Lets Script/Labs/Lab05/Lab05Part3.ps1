$UsersCSVArr = Import-Csv -Path '.\users.csv'

foreach($UserCSV in $UsersCSVArr) {
    if ($UserCSV.DEPARTMENT -eq 'EvilWizards') {
        'The user ' + $UserCSV.NAME + ' is an Evil Wizard'
        'Do you want to create this user? (y/n)'
        $CreateOrNot = Read-Host

        if ($CreateOrNot -eq 'y') {
            $Password = ConvertTo-SecureString -String $UserCSV.PASSWORD -AsPlainText -Force
    
            $CreatedUser = New-LocalUser -Name $UserCSV.LOGINNAME -Password $Password -Description $UserCSV.DEPARTMENT
        
        } else {
            'Ok, we will not create the user ' + $UserCSV.NAME
        }

    } else {
        $Password = ConvertTo-SecureString -String $UserCSV.PASSWORD -AsPlainText -Force
    
        $CreatedUser = New-LocalUser -Name $UserCSV.LOGINNAME -Password $Password -Description $UserCSV.DEPARTMENT
    }
}