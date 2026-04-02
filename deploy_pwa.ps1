# Script de despliegue para PWA en GitHub

$targetDir = "C:\Users\quino\OneDrive\Escritorio\IBPS"
$sourceDir = "C:\Users\quino\.gemini\antigravity\scratch\ibps_pwa"

if (Test-Path $targetDir) {
    Write-Host "Copiando archivos a $targetDir..." -ForegroundColor Cyan
    Copy-Item "$sourceDir\manifest.json" "$targetDir\" -Force
    Copy-Item "$sourceDir\sw.js" "$targetDir\" -Force
    Copy-Item "$sourceDir\icon-192.png" "$targetDir\" -Force
    Copy-Item "$sourceDir\icon-512.png" "$targetDir\" -Force
    Copy-Item "$sourceDir\index.html" "$targetDir\" -Force
    
    Write-Host "✅ Archivos copiados correctamente." -ForegroundColor Green
    Write-Host "`nAhora puedes subir los cambios a GitHub con estos comandos en tu terminal:" -ForegroundColor Yellow
    Write-Host "cd '$targetDir'"
    Write-Host "git add ."
    Write-Host "git commit -m 'Implementar PWA e iconos'"
    Write-Host "git push"
} else {
    Write-Host "❌ No se encontró la carpeta $targetDir" -ForegroundColor Red
}
