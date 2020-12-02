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

function Invoke-Day1Task2 {
    param (
        $entries
    )
    $i = 0
    foreach ($firstentry in $entries) {
        $j = 0
        foreach ($secondentry in $entries) {
            $k = 0
            foreach ($thirdentry in $entries) {
                if ($i -ne $j -and $i -ne $k) {
                    if ($firstentry + $secondentry + $thirdentry -eq 2020) {
                        return $firstentry * $secondentry * $thirdentry
                    }
                }
                $k++
            }
            $j++
        }
        $i++
    }
}