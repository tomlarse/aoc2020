BeforeAll {
    . ..\day2.ps1
}
Describe "Day 2 Task 1" {
    It "Calculates example data correctly" {
        Invoke-Day2Task1 -Entries @("1-3 a: abcde", "1-3 b: cdefg", "2-9 c: ccccccccc", "2-9 c: cdcdcdcdcdcdcdcdcd", "2-9 c: cdcdcdcdcdcdcdcdcdcd") | Should -Be 3
    }
}

Describe "Day 2 Task 2" {
    It "Calculates example data correctly" {
        Invoke-Day2Task2 -Entries @("1-3 a: abcde", "1-3 b: cdefg", "2-9 c: ccccccccc") | Should -Be 1
    }
}