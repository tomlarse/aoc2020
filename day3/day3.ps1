function Get-NextPosition {
    param (
        $position,
        $slope,
        $width
    )

    @{
        y = $position.y + $slope.down
        x = ($position.x + $slope.right -lt $width) ? $position.x + $slope.right : $position.x + $slope.right - $width 
    }
}
function Invoke-Day3Task1 {
    param (
        $map,
        $slope
    )

    $position = @{
        x = 1
        y = 1
    }

    $trees = 0
    $linenumber = 1
    foreach ($line in $map) {
        if ($position.y -eq $linenumber) {
            if ($line[$position.x-1] -eq '#') {
                $trees++
            }
            $position = Get-NextPosition -position $position -width $line.length -slope $slope
        }
        $linenumber++
    }
    $trees
}

function Invoke-Day3Task2 {
    param (
        $map,
        $slopes = @(@{down = 1; right = 1 }, @{down = 1; right = 3 }, @{down = 1; right = 5 }, @{down = 1; right = 7 }, @{down = 2; right = 1 })
    )

    $total = 1

    foreach ($slope in $slopes) {
        $total = $total*(Invoke-Day3Task1 -map $map -slope $slope)
    }
    $total
}
