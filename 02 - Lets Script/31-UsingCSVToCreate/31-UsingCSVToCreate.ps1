$UsersCSVArr = Import-Csv -Path '.\users.csv'

foreach($UserCSV in $UsersCSVArr) {
    $Password = ConvertTo-SecureString -String $UserCSV.PASSWORDOFUSER -AsPlainText -Force
    
    New-LocalUser -Name $UserCSV.LOGONNAME -Password $Password -Description $UserCSV.DESCRIPTION
}