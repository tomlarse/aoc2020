function Invoke-Day1Task1 {
    param (
        $entries
    )
    $i = 0
    foreach ($firstentry in $entries) {
        $j = 0
        foreach ($entry in $entries) {
            if ($i -ne $j) {
                if ($firstentry + $entry -eq 2020) {
                    return $firstentry * $entry
                }
            }
            $j++
        }
        $i++
    }
}