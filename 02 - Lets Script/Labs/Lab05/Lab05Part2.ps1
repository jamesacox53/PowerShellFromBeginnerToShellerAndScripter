$UsersCSVArr = Import-Csv -Path '.\users.csv'

foreach($UserCSV in $UsersCSVArr) {
    if ($UserCSV.DEPARTMENT -eq 'EvilWizards') {
        'The user ' + $UserCSV.NAME + ' cannot be created because they have the department ' + +$UserCSV.DEPARTMENT

    } else {
        $Password = ConvertTo-SecureString -String $UserCSV.PASSWORD -AsPlainText -Force
    
        New-LocalUser -Name $UserCSV.LOGINNAME -Password $Password -Description $UserCSV.DEPARTMENT
    }
}