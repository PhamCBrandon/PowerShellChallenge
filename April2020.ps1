<#
# Challenge Text
While experienced PowerShell scripters are hopefully tackling their latest challenge, The Chairman didn’t want those of you still in the earlier stages of learning PowerShell to feel left out so he has commissioned a new challenge.
## Beginner Challenge
When you create a string of text in PowerShell, each character can also be represented by its underlying [CHAR] value which actually has an integer value. The value can be turned back into the original string character.
PS C:\> $x = "P"
PS C:\> [char]$x -as [int]
80
PS C:\> [char]80
P
Your challenge is to define a variable with a string of text, like $w=”Iron Scripter”. Write a PowerShell expression that will give you the sum of the integer values for each character in the string. The second part of the challenge is to display the text using its integer values.
74 114 111 110 ...
#> 

[string]$text = "Iron Scripter"

$zero = 0
for ($i = 0; $i -lt $text.Length; $i++) {
$character = [char]$text[$i]
$sum += ($character -as [int])
}
Echo "Display Character count: $i"
Echo "Display Int Value of all Characters: $sum"
