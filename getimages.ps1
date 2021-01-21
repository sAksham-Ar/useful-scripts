$list = Get-ChildItem -Recurse | `Where-Object { $_.Extension -eq '.jpg' -or $_.Extension -eq '.jpeg' -or $_.Extension -eq '.png' }
ForEach($n in $list){
    $('<img src="gallery/'+$n.Name+'" alt="'+$n.name+'"></img>') | Out-File -Append 'src.txt'
}