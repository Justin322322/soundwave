# PowerShell script to download missing genre images
# Using alternate direct URLs to royalty-free images

function Download-Image {
    param (
        [string]$url,
        [string]$outputFile
    )
    
    Write-Host "Downloading $outputFile from $url"
    Invoke-WebRequest -Uri $url -OutFile $outputFile -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
    Write-Host "Downloaded $outputFile successfully"
}

# Create array of image details [url, filename]
$images = @(
    # Hip Hop image - alternate source
    @("https://images.pexels.com/photos/1309240/pexels-photo-1309240.jpeg", "hiphop.jpg"),
    
    # Classical music - alternate source
    @("https://cdn.pixabay.com/photo/2014/05/21/15/18/musician-349790_1280.jpg", "classical.jpg")
)

# Download each image
foreach ($image in $images) {
    Download-Image -url $image[0] -outputFile $image[1]
}

Write-Host "All missing genre images downloaded successfully!" 