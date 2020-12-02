BeforeAll {
    . ..\day1.ps1
}
Describe "Day 1 Task 1" {
    It "Calculates example data correctly" {
        Invoke-Day1Task1 -Entries @(1721, 979, 366, 299, 675, 1456) | Should -Be 514579
    }
}

Describe "Day 1 Task 2" {
    It "Calculates example data correctly" {
        Invoke-Day1Task2 -Entries @(1721, 979, 366, 299, 675, 1456) | Should -Be 241861950
    }
}