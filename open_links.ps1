# A PowerShell script to read links from a hard-coded file and open them in a browser.

# The script assumes a file named "links.txt" exists in the same directory.
$FilePath = "links.txt"

# Check if the file exists
if (-not (Test-Path $FilePath)) {
    Write-Error "Error: The file at '$FilePath' was not found."
    exit
}

Write-Host "Reading links from '$FilePath'..."

# Regular expression to find URLs
$urlRegex = 'https?://[^\s|"]+'
$linksFound = 0

# Get the content of the file and find all URL matches
$content = Get-Content -Raw $FilePath
$urls = [System.Text.RegularExpressions.Regex]::Matches($content, $urlRegex)

if (-not $urls.Count) {
    Write-Host "No links found in the file."
    exit
}

Write-Host "Found $($urls.Count) link(s). Opening them now..."

# Open each URL in the default browser
foreach ($match in $urls) {
    $url = $match.Value
    Write-Host "Opening: $url"
    Start-Process $url
    $linksFound++
    # Optional: Add a small delay between opening tabs
    Start-Sleep -Seconds 1
}

Write-Host "`nSuccessfully opened $linksFound link(s)."

# --- Instructions for use ---
# 1. Save this file as "open_links.ps1".
# 2. Create a text file in the same directory, named "links.txt", with your URLs.
# 3. Open PowerShell and navigate to that directory.
# 4. Run the script with the command: .\open_links.ps1
