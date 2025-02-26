# PowerShell script to download background video
$videoUrl = "https://assets.mixkit.co/videos/preview/mixkit-dj-playing-music-at-a-concert-1029-large.mp4"
$outputPath = "video/background.mp4"

# Create video directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "video"

Write-Host "Downloading background video..."
Invoke-WebRequest -Uri $videoUrl -OutFile $outputPath -UserAgent "Mozilla/5.0"
Write-Host "Video downloaded successfully to $outputPath" 