Import-Module -Name Terminal-Icons

### QOL Functions

function touch($file) { "" | Out-File $file -Encoding ASCII }
function ff($name) {
    Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | ForEach-Object {
        Write-Output "$($_.FullName)"
    }
}

function ll { Get-ChildItem -Force | Format-Table -AutoSize }


oh-my-posh init pwsh --config "thecyberden" | Invoke-Expression
fastfetch
