'Input the day and I will tell you what to eat:'

$Day = Read-Host

if($Day -eq 'Monday') {
    'On Monday you eat Bami Goreng'

} elseif ($Day -eq 'Tuesday') {
    'On Tuesday you eat Rendang'

} elseif($Day -eq 'Wednesday') {
    'On Wednesday you eat Nasi Goreng'

} else {
    'I do not care.'
}