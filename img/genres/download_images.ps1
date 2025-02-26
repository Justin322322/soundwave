# PowerShell script to download genre images
# Using direct URLs to royalty-free images

function Download-Image {
    param (
        [string]$url,
        [string]$outputFile
    )
    
    Write-Host "Downloading $outputFile from $url"
    Invoke-WebRequest -Uri $url -OutFile $outputFile
    Write-Host "Downloaded $outputFile successfully"
}

# Create array of image details [url, filename]
$images = @(
    # Rock image - electric guitar with stage lights
    @("https://cdn.pixabay.com/photo/2016/11/19/13/57/drum-set-1839383_1280.jpg", "rock.jpg"),
    
    # Hip Hop image - urban setting with headphones/microphone
    @("https://cdn.pixabay.com/photo/2019/10/25/09/23/hip-hop-4576009_1280.jpg", "hiphop.jpg"),
    
    # Electronic music - DJ equipment, synthesizers
    @("https://cdn.pixabay.com/photo/2015/11/22/19/04/crowd-1056764_1280.jpg", "electronic.jpg"),
    
    # Jazz image - saxophone, jazz club
    @("https://cdn.pixabay.com/photo/2018/06/30/09/29/musician-3507317_1280.jpg", "jazz.jpg"),
    
    # Classical music - orchestra, piano, violin
    @("https://cdn.pixabay.com/photo/2018/03/04/09/51/violin-3197463_1280.jpg", "classical.jpg"),
    
    # Country music - acoustic guitar, country landscape
    @("https://cdn.pixabay.com/photo/2016/11/18/15/44/audience-1835431_1280.jpg", "country.jpg")
)

# Download each image
foreach ($image in $images) {
    Download-Image -url $image[0] -outputFile $image[1]
}

Write-Host "All genre images downloaded successfully!" 