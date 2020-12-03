BeforeAll {
    . ..\day3.ps1

    $day3test = @(
        "..##.......",
        "#...#...#..",
        ".#....#..#.",
        "..#.#...#.#",
        ".#...##..#.",
        "..#.##.....",
        ".#.#.#....#",
        ".#........#",
        "#.##...#...",
        "#...##....#",
        ".#..#...#.#"
    )

    $slope = @{
        down = 1
        right = 3
    }

    $startpos = @{
        x = 1
        y = 1
    }

    $startposwrap = @{
        x = 10
        y = 1
    }
}
Describe "Day 3 Task 1" {
    It "Get-Nextposition calculates next position correctly" {
        $nextpos = Get-NextPosition -position $startpos -slope $slope -width $day3test[0].Length 
        
        $nextpos.x | Should -Be 4
        $nextpos.y | Should -Be 2
    }

    It "Get-Nextposition calculates next position correctly with wrapping" {
        $nextpos = Get-NextPosition -position $startposwrap -slope $slope -width $day3test[0].Length 
        
        $nextpos.x | Should -Be 2
        $nextpos.y | Should -Be 2
    }

    It "Calculates example data correctly" {
        Invoke-Day3Task1 -Map $day3test -Slope $slope | Should -Be 7
    }
}

Describe "Day 3 Task 2" {
    It "Calculates example data correctly" {
        Invoke-Day3Task2 -Map $day3test | Should -Be 336
    }
}