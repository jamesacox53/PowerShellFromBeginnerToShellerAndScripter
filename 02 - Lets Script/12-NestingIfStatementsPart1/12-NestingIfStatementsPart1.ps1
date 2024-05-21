'Input the day and I will tell you what to eat:'

$Day = Read-Host

if($Day -eq 'Monday') {
    'Are you sure you want to know what you will eat on Monday? Choose y/n'
    $Answer = Read-Host

    if ($Answer -eq 'y') {
        'On Monday you eat Bami Goreng'
    
    } else {
        'Ok I am not going to show that to you.'
    }

} elseif ($Day -eq 'Tuesday') {
    'Are you sure you want to know what you will eat on Tuesday? Choose y/n'
    $Answer = Read-Host

    if ($Answer -eq 'y') {
        'On Tuesday you eat Rendang'
    
    } else {
        'Ok I am not going to show that to you.'
    }

} elseif($Day -eq 'Wednesday') {
    'On Wednesday you eat Nasi Goreng'

} else {
    'I do not care.'
}