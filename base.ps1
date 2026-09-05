$choice = Read-Host "`nSelect operation (1 or 2):`n1) Encode to Base64`n2) Decode from Base64`nChoice"
if ($choice -eq "1") {
    $text = Read-Host "`nEnter text to encode"
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($text)
    $encoded = [System.Convert]::ToBase64String($bytes)
    Write-Host "`nEncoded result:" -ForegroundColor Green
    Write-Host $encoded -ForegroundColor Yellow
} elseif ($choice -eq "2") {
    $base64 = Read-Host "`nEnter Base64 to decode"
    try {
        $bytes = [System.Convert]::FromBase64String($base64)
        $decoded = [System.Text.Encoding]::UTF8.GetString($bytes)
        Write-Host "`nDecoded result:" -ForegroundColor Green
        Write-Host $decoded -ForegroundColor Yellow
    } catch {
        Write-Host "`n[Error] Invalid Base64 string!" -ForegroundColor Red
    }
} else {
    Write-Host "`n[Error] Invalid choice! Please select 1 or 2." -ForegroundColor Red
}
