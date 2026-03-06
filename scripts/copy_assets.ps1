# Copy and rename asset images from src/assets to public/assets
# Run from repository root

$maps = @(
    @{ src = 'src\assets\Siomay\Siomay 25.jpeg'; dest = 'public\assets\Siomay\siomay-25.jpeg' },
    @{ src = 'src\assets\Siomay\Pangsit.jpeg'; dest = 'public\assets\Siomay\pangsit.jpeg' },

    @{ src = 'src\assets\Dimsum\Dimsum.jpeg'; dest = 'public\assets\Dimsum\dimsum.jpeg' },

    @{ src = 'src\assets\Katsu\Katsu.jpeg'; dest = 'public\assets\Katsu\katsu.jpeg' },

    @{ src = 'src\assets\Risol - Corndog\Risol 5 (Ayam Pds - Bolognaise - Sayur).jpeg'; dest = 'public\assets\Risol-Corndog\risol-5-ayam-pds-bolognaise-sayur.jpeg' },
    @{ src = 'src\assets\Risol - Corndog\Corndog 6.jpeg'; dest = 'public\assets\Risol-Corndog\corndog-6.jpeg' },

    @{ src = 'src\assets\Cireng\[Display]-Cireng.jpeg'; dest = 'public\assets\Cireng\display-cireng.jpeg' },

    @{ src = 'src\assets\Nugget\Spicy Chicken 10 (Ayam).jpeg'; dest = 'public\assets\Nugget\spicy-chicken-10-ayam.jpeg' },
    @{ src = 'src\assets\Nugget\Ebi Furai 12.jpeg'; dest = 'public\assets\Nugget\ebi-furai-12.jpeg' },
    @{ src = 'src\assets\Nugget\Egg Chicken Roll - GPT.jpeg'; dest = 'public\assets\Nugget\egg-chicken-roll-gpt.jpeg' },
    @{ src = 'src\assets\Nugget\Kaki Naga 10 (Ayam+Ikan).jpeg'; dest = 'public\assets\Nugget\kaki-naga-10-ayam-ikan.jpeg' },
    @{ src = 'src\assets\Nugget\Shrimp Roll 10 (Udang+Ayam).jpeg'; dest = 'public\assets\Nugget\shrimp-roll-10-udang-ayam.jpeg' },
    @{ src = 'src\assets\Nugget\Udang Keju - Shrimp Cheese 10.jpeg'; dest = 'public\assets\Nugget\shrimp-cheese-10.jpeg' }
)

foreach ($m in $maps) {
    $src = $m.src
    $dest = $m.dest
    $destDir = Split-Path $dest -Parent

    if (-not (Test-Path $src)) {
        Write-Host "[SKIP] Source not found: $src" -ForegroundColor Yellow
        continue
    }

    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
        Write-Host "Created directory: $destDir" -ForegroundColor Green
    }

    Copy-Item -LiteralPath $src -Destination $dest -Force
    if (Test-Path $dest) {
        Write-Host "Copied: $src -> $dest" -ForegroundColor Cyan
    } else {
        Write-Host "[ERROR] Failed to copy: $src" -ForegroundColor Red
    }
}

Write-Host "Done. Verify files in public\assets and run npm run build/preview to test." -ForegroundColor Green
