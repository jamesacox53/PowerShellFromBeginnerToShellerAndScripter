$UsersCSVArr = Import-Csv -Path '.\users.csv'

foreach($UserCSV in $UsersCSVArr) {
    $Password = ConvertTo-SecureString -String $UserCSV.PASSWORD -AsPlainText -Force
    
    New-LocalUser -Name $UserCSV.LOGINNAME -Password $Password -Description $UserCSV.DEPARTMENT
}