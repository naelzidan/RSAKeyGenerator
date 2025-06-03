param(
    [Parameter(Mandatory)]
    [string]$BillerCode,

    [Parameter(Mandatory)]
    [string]$BillerName,

    [Parameter(Mandatory)]
    [ValidateSet("Test", "Prod")]
    [string]$Environment,

    [Parameter(Mandatory)]
    [string]$OpenSSLPath  # Full path to openssl.exe
)

# Replace spaces in Biller Name with hyphens
$SafeBillerName = $BillerName -replace '\s+', '-'

# Compose file names
$Prefix = "${BillerCode}_${Environment}_${SafeBillerName}"
$PrivateKeyFile = "${Prefix}_Private.key"
$PublicKeyFile  = "${Prefix}_Public.key"

# Ensure OpenSSL path exists
if (-not (Test-Path $OpenSSLPath)) {
    Write-Error "OpenSSL not found at: $OpenSSLPath"
    exit 1
}

# Generate private key
& "$OpenSSLPath" genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $PrivateKeyFile
if ($LASTEXITCODE -ne 0) {
    Write-Error "❌ Failed to generate private key"
    exit 1
}

# Generate public key
& "$OpenSSLPath" rsa -pubout -in $PrivateKeyFile -out $PublicKeyFile
if ($LASTEXITCODE -ne 0) {
    Write-Error "❌ Failed to generate public key"
    exit 1
}

Write-Host "`n✅ RSA key pair generated successfully:"
Write-Host " - Private Key: $PrivateKeyFile"
Write-Host " - Public Key : $PublicKeyFile"
