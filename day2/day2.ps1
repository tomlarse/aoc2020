function Invoke-Day2Task1 {
    param (
        $entries
    )

    $total = 0
    foreach ($entry in $entries) {
        if ($entry.Substring($entry.IndexOf(':') + 2) -match "^([^$($entry[$entry.IndexOf(':')-1])]*$($entry[$entry.IndexOf(':')-1])[^$($entry[$entry.IndexOf(':')-1])]*){$($entry.Substring(0,$entry.IndexOf('-'))),$($entry.Substring($entry.IndexOf('-')+1,$entry.IndexOf(' ')-($entry.indexof(' ') - ($entry.indexof('-')+1))).trimEnd())}$") {
            $total++
        }
    }
    $total
}

function Invoke-Day2Task2 {
    param (
        $entries
    )

    $total = 0
    foreach ($entry in $entries) {
        #Today i relearned! This is so cool!
        [int]$pos1, [int]$pos2, $char, $pw = $entry -split '\W+'

        if ($pw[$pos1-1] -eq $char -xor $pw[$pos2-1] -eq $char) {
            $total++
        }
    }
    $total
}
