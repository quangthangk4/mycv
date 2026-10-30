# Load once per terminal, or from your PowerShell profile:
# . 'C:\path\to\mycv\cmake-pdf.ps1'
function global:cmake {
    $nativeCMake = (Get-Command cmake -CommandType Application -ErrorAction Stop | Select-Object -First 1).Source

    if ($args.Count -eq 1 -and $args[0] -eq 'pdf') {
        $buildScript = Join-Path -Path $PWD.Path -ChildPath 'build.cmake'
        if (-not (Test-Path -LiteralPath $buildScript -PathType Leaf)) {
            Write-Error 'Run cmake pdf from the CV project directory containing build.cmake.'
            $global:LASTEXITCODE = 1
            return
        }

        & $nativeCMake -P $buildScript
    }
    else {
        & $nativeCMake @args
    }
}
