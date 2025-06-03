# RSAKeyGenerator

# RSA Key Generator Setup and Usage

1. **Download Windows OpenSSL** from the following URL:  
   [https://slproweb.com/download/Win64OpenSSL-3_5_0.msi](https://slproweb.com/download/Win64OpenSSL-3_5_0.msi)

2. **Install OpenSSL** to `C:\Program Files\OpenSSL-Win64` and make sure to include the binaries in the `bin` directory.

3. **Download the repository** and extract it to `C:\`

   The files will be available at:  
   `C:\RSAKeyGenerator-main`

4. **Run Windows PowerShell ISE as Administrator.**

5. **Open the script file** `ExecuteGenerate-RSAKeys.ps1`.

6. **Replace parameter values** in the script:  
   - `BillerCode`  
   - `BillerName`  
   - `Environment` (set to `"Test"` or `"Prod"`)  
   - `OpenSSL Installation Path`

7. **Run the script.**

8. If you encounter the error:

   > *"The script is not digitally signed. You cannot run this script on the current system. For more information about running scripts and setting execution policy..."*

   Execute one of the following commands in PowerShell to allow script execution temporarily or for your user:

   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass




